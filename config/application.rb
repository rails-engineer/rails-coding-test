require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsCodingTest
  class Application < Rails::Application
    config.autoload_paths << Rails.root.join('lib')
    Dir.glob(File.join(File.dirname(__FILE__), '../lib/**/*.rb')) do |c|
      Rails.configuration.cache_classes ? require(c) : load(c)
    end

    config.generators do |g|
      g.test_framework :rspec,
                       fixtures: true,
                       view_specs: false,
                       helper_specs: false,
                       routing_specs: false,
                       request_specs: false,
                       controller_specs: true

      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.jbuilder false
    end

    config.active_record.raise_in_transactional_callbacks = true
  end
end
