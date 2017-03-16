#!/bin/sh

set -evx

gem environment
gem install bundler --user-install --conservative
bundle install
