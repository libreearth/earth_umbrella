defmodule Earth.Repo do
  use Ecto.Repo,
    otp_app: :earth,
    adapter: Ecto.Adapters.Postgres
end
