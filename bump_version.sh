#!/bin/sh

echo $(pwd)
bundle install
bundle exec rake bump_version
