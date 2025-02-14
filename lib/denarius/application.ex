defmodule Denarius.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      DenariusWeb.Telemetry,
      Denarius.Supabase,
      Denarius.Repo,
      {DNSCluster, query: Application.get_env(:denarius, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Denarius.PubSub},
      # Start a worker by calling: Denarius.Worker.start_link(arg)
      # {Denarius.Worker, arg},
      # Start to serve requests, typically the last entry
      DenariusWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Denarius.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    DenariusWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
