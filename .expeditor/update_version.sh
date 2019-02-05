#!/bin/bash

set -evx

version="$(cat VERSION)"

sed -i -r "s/VERSION = \".+\"/VERSION = \"${version}\"/" lib/version.rb

sed -i -r "s/build_version \".+\"/build_version \"${version}\"/" omnibus-harmony/config/projects/harmony.rb
