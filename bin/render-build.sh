#!/bin/bash

# Your build commands here
bundle install
bundle exec rake assets:precompilechmod +x render-build.sh

chmod +x render-build.sh