defmodule Nimbus.Repo do
  use Ecto.Repo,
    otp_app: :nimbus,
    adapter: Ecto.Adapters.Postgres
end
