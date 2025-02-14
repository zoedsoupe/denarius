# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :denarius, Denarius.Supabase,
  base_url: System.get_env("SUPABASE_URL"),
  api_key: System.get_env("SUPABASE_KEY")

# Configures the endpoint
config :denarius, DenariusWeb.Endpoint,
  url: [host: "localhost"],
  adapter: Bandit.PhoenixAdapter,
  render_errors: [
    formats: [html: DenariusWeb.ErrorHTML, json: DenariusWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: Denarius.PubSub,
  live_view: [signing_salt: "heeSVFEj"]

config :denarius,
  ecto_repos: [Denarius.Repo],
  generators: [timestamp_type: :utc_datetime]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
