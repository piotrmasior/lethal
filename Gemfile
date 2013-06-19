source 'https://rubygems.org'

gem 'rails', '3.2.3.rc2'
gem 'mysql2'
gem 'jquery-rails'
gem 'unicorn'
gem 'capistrano'
gem 'capistrano-ext'

####
# lethal codebase
####
gem 'devise' ~> '3.0.0.rc'
gem 'rails_config'

####

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'therubyracer', :platform => :ruby
  gem 'uglifier'
end

group :development do
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'libnotify'
end

group :test do
  gem 'rspec-rails'
  gem 'ffaker'
  gem 'factory_girl_rails', :require => false
  gem 'spork'
  gem 'simplecov', :require => false
  gem 'database_cleaner'
  gem 'capybara'
end

