#!/bin/bash

set -evx

export LANG=en_US.UTF-8

. .expeditor/bundle_install.sh

bundle exec rake update
