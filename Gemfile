source 'https://rubygems.org'

gem 'rails', '4.0.0.rc2'
gem 'mysql2'
gem 'jquery-rails'
gem 'unicorn'
gem 'capistrano'
gem 'capistrano-ext'

####
# lethal codebase
####
gem 'devise', '3.0.0.rc'
gem 'rails_config'
gem 'sass-rails', '4.0.0.rc2'
gem 'coffee-script'

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

