== Getting Started

1. Create your rvm gemset with and adjust .rvmrc

```
rvm gemset create lethal
echo "rvm use 1.9.3@lethal" > .rvmrc
gem install bundler --no-ri --no-rdoc
gem install rails --no-ri --no-rdoc
bundle install

```
