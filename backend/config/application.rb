# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

#
# Application - Stories
#
class Application < Rails::Application
  config.load_defaults 8.0
  config.api_only = true
  config.autoload_lib(ignore: %w[assets tasks])
end
