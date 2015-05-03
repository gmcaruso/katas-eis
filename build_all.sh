#!/usr/bin/env sh
set -e
bundle install
cd batalla_naval
bundle exec rake
