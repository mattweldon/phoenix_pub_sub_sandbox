use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :publisher_service, PublisherService.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :publisher_service, PublisherService.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "mattweldon",
  password: "",
  database: "publisher_service_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
