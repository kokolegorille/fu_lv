defmodule FuLv.Repo do
  use Ecto.Repo,
    otp_app: :fu_lv,
    adapter: Ecto.Adapters.Postgres
end
