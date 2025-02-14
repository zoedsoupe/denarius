{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    flake-parts.url = "github:hercules-ci/flake-parts";
    systems.url = "github:nix-systems/default";
  };

  outputs = {
    flake-parts,
    systems,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = import systems;
      perSystem = {
        pkgs,
        system,
        ...
      }: let
        inherit (pkgs.beam.interpreters) erlang_27;
        inherit (pkgs.beam) packagesWith;
        beam = packagesWith erlang_27;

        elixir_1_18 = beam.elixir.override {
          version = "1.18.2";
          src = pkgs.fetchFromGitHub {
            repo = "elixir";
            owner = "elixir-lang";
            rev = "v1.18.2";
            sha256 = "sha256-8FhUKAaEjBBcF0etVPdkxMfrnR5niU40U8cxDRJdEok=";
          };
        };
      in {
        _module.args.pkgs = import inputs.nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
        devShells.default = with pkgs;
          mkShell {
            name = "denarius";
            packages = with pkgs;
              [elixir_1_18 nodejs ghostscript zlib postgresql flyctl]
              ++ lib.optional stdenv.isLinux [inotify-tools]
              ++ lib.optional stdenv.isDarwin [
                darwin.apple_sdk.frameworks.CoreServices
                darwin.apple_sdk.frameworks.CoreFoundation
              ];
          };
      };
    };
}
