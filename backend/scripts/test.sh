#!/bin/sh

echo "Running backend test script"

# Load chruby and select the correct Ruby version
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/chruby.sh;\
chruby 3.3.0;\

# Run the test commands
bundle install;\
bundle exec rspec;\