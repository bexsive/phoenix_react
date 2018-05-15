# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :try_react,
  ecto_repos: [TryReact.Repo]

# Configures the endpoint
config :try_react, TryReactWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "R78/oQboZ240H2+ZfVNuTaNd6HHoSXWfcD8SdhsTyh9bEqlva9j/pGXFZ9JjOdW7",
  render_errors: [view: TryReactWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TryReact.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
