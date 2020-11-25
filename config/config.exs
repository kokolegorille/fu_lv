# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :fu_lv,
  ecto_repos: [FuLv.Repo]

# Configures the endpoint
config :fu_lv, FuLvWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2Nq2UoMwTEvXnR6TmAtYFYhB7u13cAEFWx4/QSzi0GUAMhY0UDKTKE0qIqk45gXg",
  render_errors: [view: FuLvWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: FuLv.PubSub,
  live_view: [signing_salt: "+qnccO/o"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
