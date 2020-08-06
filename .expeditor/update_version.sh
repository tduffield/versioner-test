#!/bin/bash

set -evx

version="$(cat VERSION)"

sed -i -r "s/^(\\s*)VERSION = \".+\"/\\1VERSION = \"${version}\"/" lib/version.rb
sed -i -r "s/^(\\s*)build_version \".+\"/\\1build_version \"${version}\"/" omnibus-harmony/config/projects/harmony.rb
sed -i -r "s/^(\\s*)VERSION: \".+\"/\\1VERSION: \"${version}\"/" .expeditor/build.docker.yml
sed -i -r "s/^(\\s*)VERSION: \".+\"/\\1VERSION: \"${version}\"/" .expeditor/nofile.yml
