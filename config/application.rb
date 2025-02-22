require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsAmusementPark
  class Application < Rails::Application
    # Add code to fix deprecation warning
    config.active_record.sqlite3.represent_boolean_as_integer = true

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    
    config.generators do |g|
      g.test_framework false
      g.assets false
      g.jbuilder false
    end
  end
end
