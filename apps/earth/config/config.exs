# Since configuration is shared in umbrella projects, this file
# should only configure the :earth application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :earth,
  ecto_repos: [Earth.Repo]

import_config "#{Mix.env()}.exs"
