defmodule SimpleLight.Repo do
  use Ecto.Repo,
    otp_app: :simple_light,
    adapter: Ecto.Adapters.Postgres
end
