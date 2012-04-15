# Lethal
[![Build Status](https://secure.travis-ci.org/piotrmasior/lethal.png)](http://travis-ci.org/piotrmasior/lethal)

[gemnasium](https://gemnasium.com/piotrmasior/lethal.png?travis)

* Create your own rvm gemset with and adjust .rvmrc (ruby 1.9.3)

```
rvm gemset create lethal
echo "rvm use 1.9.3@lethal" > .rvmrc
gem install bundler --no-ri --no-rdoc
gem install rails --no-ri --no-rdoc
bundle install

```

* Adjust database config

```
cp config/database.yml.sample config/database.yml
#edit via nano or whatever
nano config/database.yml
rake db:create && rake db:migrate
```

* Linux post-install

```
sudo apt-get install libnotify-bin
```

* Prepare

```
guard init rspec

```
consider change Guardfile

```
guard 'spork' do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/environments/.*\.rb$})
  watch(%r{^config/initializers/.*\.rb$})
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb') { :rspec }
  watch('test/test_helper.rb') { :test_unit }
  watch(%r{features/support/}) { :cucumber }
end

guard 'rspec', :version => 2, :cli => "--drb --color --format doc", :all_after_pass => false, :all_on_start => false, :keep_failed => false do
```


* Start

```
bundle exec guard

rails s
```


#current staging / demo

http://lethal.railsutils.com/
