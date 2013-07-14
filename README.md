# Lethal
[![Build Status](https://secure.travis-ci.org/piotrmasior/lethal.png)](http://travis-ci.org/piotrmasior/lethal)
[![Dependency Status](https://gemnasium.com/piotrmasior/lethal.png?travis)](https://gemnasium.com/piotrmasior/lethal)
[![Code Climate](https://codeclimate.com/github/piotrmasior/lethal.png)](https://codeclimate.com/github/piotrmasior/lethal)

* Using RVM

```
rvm install ruby 2.0.0-p247
rvm gemset create lethal
gem install bundler --no-ri --no-rdoc
git clone https://github.com/piotrmasior/lethal.git
cd lethal
bundle

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

* Start

```
bundle exec guard

rails s
```


#current staging / demo

http://lethal.railsutils.com/

#production notes

```
rvm wrapper 2.0.0-p247@lethal lethal unicorn
```
