require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Ens
  class Application < Rails::Application
    config.i18n.default_locale = :en
    I18n.config.enforce_available_locales = true

    # able to serve images in dev at least:
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)

  end
end
