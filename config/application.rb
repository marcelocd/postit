require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Postit
  class Application < Rails::Application
    config.load_defaults 6.1

    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
    config.i18n.default_locale = 'pt-BR'
  end
end
