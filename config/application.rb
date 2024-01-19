require_relative "boot"

require "rails/all"
require 'responders'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RenderTest
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
    config.secret_key_base = 'bded34566c4e6caf3f96281e8af08ec0ad98605545f1b667849c44651b97d1b2a412d56b79ffae3f587ffffe26fe63aa375961c0a4bdd7aa33cfff0ec4e3adf3'

  end
end
