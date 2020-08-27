# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cert_issue,
  ecto_repos: [CertIssue.Repo]

# Configures the endpoint
config :cert_issue, CertIssueWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "44UxndoRHepzwXbGp7slY2SljBJu4bQGv3L637Cj+W1dSDVe6LOIAowPA2BQQRMb",
  render_errors: [view: CertIssueWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CertIssue.PubSub,
  live_view: [signing_salt: "4w8Qe+Sq"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
