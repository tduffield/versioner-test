#!/bin/bash

branch="expeditor/run-myscript"
git checkout -b "$branch"

# Run the command which will modify some files
echo "I'm a little tea pot" > songs.txt

# Commit the changes to $branch
git add .
dco_safe_git_commit "Ran some awesome stuff!"

# Open the pull request
open_pull_request

# Get back to the release branch and cleanup the leftovers - any changed files left over at the end of this script will get committed to the release branch.
git checkout -
git branch -D "$branch"


