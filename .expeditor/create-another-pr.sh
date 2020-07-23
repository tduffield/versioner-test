#!/bin/bash

set -eou pipefail

branch="expeditor/cursed-song"
git checkout -b "$branch"

# Run the command which will modify some files
echo "this is the song that never ends. it goes on and on my friends. some people started singing not knowing what it was. and they'll continue singing it forever just because..." >> songs.txt

# Commit the changes to $branch
git add .
dco_safe_git_commit "next verse, same as the first"

# Open the pull request
open_pull_request

# Get back to the release branch and cleanup the leftovers - any changed files left over at the end of this script will get committed to the release branch.
git checkout -
git branch -D "$branch"


