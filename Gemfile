source 'https://rubygems.org'

gem 'rails', '4.0.0'
gem 'mysql2'
gem 'jquery-rails'
gem 'unicorn'
gem 'capistrano'
gem 'capistrano-ext'
gem 'rvm-capistrano'

####
# lethal codebase
####
gem 'devise'
gem 'rails_config'
gem 'sass-rails'
gem 'coffee-script'
gem 'uglifier'

####

group :development, :test do
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'spork-rails', github: 'railstutorial/spork-rails'
  gem 'guard-spork'
  gem 'childprocess'

  gem 'ffaker'
  gem 'simplecov', :require => false
end

group :test do
  gem 'selenium-webdriver'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'

  gem 'libnotify'
end

group :doc do
  gem 'sdoc', :require => false
end

