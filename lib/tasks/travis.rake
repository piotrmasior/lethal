namespace :travis do
  desc "create travis db config"
  task :config => :environment do
    FileUtils.cp "config/database.#{ENV['DB'] || 'mysql'}.yml", 'config/database.yml'
  end
end

