#!/bin/sh

set -evx
echo $(pwd)
bundle install
bundle exec rake bump_version
