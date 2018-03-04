require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module My404test
  class Application < Rails::Application
    config.load_defaults 5.2


    # This is what sends errors to the app routes
    config.exceptions_app = self.routes
  end
end
