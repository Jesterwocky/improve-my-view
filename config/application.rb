require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ImproveMyView
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # rspec will create a factory for each model created using a generate
    # command. Per everydayrails.com testing tutorial.
    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        # If true, a fixture (set of sample data) will be generated
        # for each model.
        view_specs: false,
        helper_specs: false,
        routing_specs: true,
        controller_specs: true,
        request_specs: true

      g.fixture_replacement :factory_girl, dir: "spec/factories"
      # Instead of a fixture, a factory_girl factory will be used to generate
      # the sample data.
    end
  end
end
