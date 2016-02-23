# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :publisher_service, PublisherService.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "xRLAlBr+5wCZ0mYh8E/ntgiXGUpJ8eOhPULPA6bVIbfFhg3ubiY/4j9+aAcCrH4u",
  render_errors: [accepts: ~w(json)],
  pubsub: [name: :phoenix_pub_sub,
           adapter: Phoenix.PubSub.Redis]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
