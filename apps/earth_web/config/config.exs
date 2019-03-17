# Since configuration is shared in umbrella projects, this file
# should only configure the :earth_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :earth_web,
  ecto_repos: [Earth.Repo],
  generators: [context_app: :earth]

# Configures the endpoint
config :earth_web, EarthWeb.Endpoint,
  url: [host: "localhost"],
  live_view: [
    signing_salt: "bgjl54oplfqzOkM3urU5rgITdMinu7rH"
  ],
  secret_key_base: "8E8wPoYrECF+i86uNZswCnLcy0dUWoLk9krxYNxR0xB5xmXSdAgcY6ipEe8o2Im+",
  render_errors: [view: EarthWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EarthWeb.PubSub, adapter: Phoenix.PubSub.PG2]


config :phoenix,
  template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
