use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :try_react, TryReactWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :try_react, TryReact.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "try_react_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
