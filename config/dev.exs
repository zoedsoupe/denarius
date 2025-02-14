import Config

# Configure your database
config :denarius, Denarius.Repo,
  # For development, we disable any cache and enable
  # debugging and code reloading.
  #
  # The watchers configuration can be used to run external
  # watchers to your application. For example, we can use it
  # to bundle .js and .css sources.
  # Binding to loopback ipv4 address prevents access from other machines.
  username: System.get_env("DATABASE_USER"),
  password: System.get_env("DATABASE_PASS"),
  hostname: System.get_env("DATABASE_HOST"),
  database: System.get_env("DATABASE_NAME"),
  port: String.to_integer(System.get_env("DATABASE_PORT") || "5432"),
  stacktrace: true,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

config :denarius, DenariusWeb.Endpoint,
  # Change to `ip: {0, 0, 0, 0}` to allow access from other machines.
  http: [ip: {0, 0, 0, 0}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "9KVB1+hKSH2L4deJb5hxpGIf/vuiNdvDbOcFpw5bpgKECbG0PY+rGrL2Of+EDNzg",
  watchers: [
    node: ["build.js", "--watch", cd: Path.expand("../assets", __DIR__)]
  ]

# Watch static and templates for browser reloading.
config :denarius, DenariusWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r"priv/static/(?!uploads/).*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"lib/denarius_web/(controllers|live|components)/.*(ex|heex)$"
    ]
  ]

# Enable dev routes for dashboard and mailbox
config :denarius, dev_routes: true

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Initialize plugs at runtime for faster development compilation
# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
# Include HEEx debug annotations as HTML comments in rendered markup
config :phoenix, :plug_init_mode, :runtime
config :phoenix, :stacktrace_depth, 20

config :phoenix_live_view,
  debug_heex_annotations: true,
  # Enable helpful, but potentially expensive runtime checks
  enable_expensive_runtime_checks: true
