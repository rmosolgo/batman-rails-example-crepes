source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '4.0.1'
gem 'unicorn'
gem 'active_model_serializers'
gem "slim-rails"
gem 'slim_assets'

gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'batman-rails', '~> 0.15'

gem 'sass-rails', '~> 4.0.0'
gem 'bootstrap-sass'
gem "binding_of_caller"

group :production do
  gem 'rails_12factor'
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
end

group :development do
  gem 'guard'
  gem 'spork-rails', github: 'sporkrb/spork-rails'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'rspec-rails', '~> 2.0'
  gem 'pry-rails'
  gem 'quiet_assets'
  gem 'better_errors'
end

group :test do
  gem 'rspec-rails', '~> 2.0'
  gem "factory_girl_rails", "~> 4.0"
  gem 'faker'
end
