set :domain,      "railsutils.com"
set :user,        'lethal'
set :application, 'lethal.railsutils.com'
set :deploy_to,   "/home/lethal/www"
set :rails_env,   "production"

role :web,        domain
role :app,        domain
role :db,         domain, :primary => true
