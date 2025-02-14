defmodule Denarius.Repo do
  use Ecto.Repo,
    otp_app: :denarius,
    adapter: Ecto.Adapters.Postgres
end
