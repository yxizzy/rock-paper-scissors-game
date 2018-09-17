# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rpsgameelx,
  ecto_repos: [Rpsgameelx.Repo]

# Configures the endpoint
config :rpsgameelx, RpsgameelxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YFyk4DrrPQACgp8QPtbB1/JvsMrKpkxpwGCkv/Jxfzr7XHy0NoqVsd8nsRXkyjK8",
  render_errors: [view: RpsgameelxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Rpsgameelx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
