#!/bin/bash

set -evx

sed -i -r "s/VERSION = \".+\"/VERSION = \"$(cat VERSION)\"/" lib/version.rb
