#!/usr/bin/env sh
set -e
bundle install
cd batalla_naval
bundle exec rake
cd ..
cd char_counter
bundle exec rake
cd ..
cd tenis
bundle exec rake

before_script:
 - chmod +x build_all
