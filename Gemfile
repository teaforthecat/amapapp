source 'https://rubygems.org'

gem 'rails', '4.0.2'
gem 'mysql2'

gem 'turbolinks'

# gem 'foundation-rails', TODO: use '5.0.4' when it comes out
gem 'foundation-rails', github: 'Retistic/foundation-rails'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'

# looks like 3.1.7 missed out on key pr #45
gem 'json_builder', github: 'dewski/json_builder'
gem 'haml-rails'

gem 'bcrypt-ruby', '~> 3.1.2'
gem 'unicorn-rails'
gem 'puma'
gem 'dalli'
gem 'httparty'
gem 'paperclip'
gem 'paper_trail', '~> 3.0'
gem 'roo'

gem 'will_paginate', '~> 3.0'
gem 'ckeditor_rails'
gem 'underscore-rails'
gem 'leaflet-js'



gem 'devise'
gem 'simple_form'
gem 'capybara'


group :development do
  gem "guard-rspec"
  gem "pry"
  gem "quiet_assets"
  gem "thin"
  gem 'capistrano', '~> 3.0'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
  gem 'poltergeist'
end

group :development, :test do
  gem 'sinatra'
  gem 'webmock'
  gem 'debugger'
  gem "zeus"
  gem 'rspec-rails', '~> 3.0.0.beta'
  gem "factory_girl_rails"
end
