require 'bundler/capistrano'
require 'capistrano/ext/multistage'

set :rvm_ruby_string, '2.0.0-p195@lethal'
set :rvm_type, :system
require "rvm/capistrano"

set :stages,              %w(production)
set :default_stage,       "production"
ssh_options[:forward_agent] = true

default_run_options[:pty]   = true
ssh_options[:paranoid]      = false
default_environment["PATH"] = "/bin:/usr/bin:/opt/ruby/bin:/usr/local/bin"

set :repository, "git@github.com:piotrmasior/lethal.git"
set :scm,         :git
set :use_sudo,    false
set :deploy_via, :remote_cache
set :keep_releases, 3

namespace :deploy do

  desc "Restarting"
  task :restart, :roles => :app, :except => { :no_release => true } do
    sudo "/etc/init.d/unicorn_lethal reload"
  end

  [:start, :stop].each do |t|
    desc "#{t} implement"
    task t, :roles => :app do ; end
  end

  desc "Make symlinks"
  task :update_symlinks do
    ['database'].each do |filename|
      run "ln -s #{shared_path}/config/#{filename}.yml #{release_path}/config/#{filename}.yml"
    end
  end

end

before "deploy:assets:precompile", "deploy:update_symlinks"

after "deploy:update_code",  "deploy:cleanup"
after "deploy:update_symlinks", "deploy:migrate"


require './config/boot'
