#!/bin/sh

bundle install && \
  bundle exec rails db:migrate:reset RAILS_ENV=development && \
  bundle exec rails db:migrate:reset RAILS_ENV=test && \
  bundle exec rails db:seed && \
