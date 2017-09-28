#!/bin/bash

set -evx
branch="expeditor/run-myscript"
git checkout -b "$branch"

touch my-file

git add .
git commit --message "Touched my file"

#####

repo=$(git remote get-url origin | gsed -rn  's/.+github\.com[\/\:](.*)\.git/\1/p')
head=$(git rev-parse --abbrev-ref HEAD)
title=$(git log --oneline --pretty=%s -1)

base=${1:-"master"}

# Be safe - don't attempt to open a PR on base
if [[ "$head" == "$base" ]]
then
  echo "ERROR: You cannot open a pull request with the same head and base."
  exit 1
fi

# Push the Branch
git push origin $head --force

# Open the PR
curl --header "Authorization: token $GITHUB_TOKEN" \
     --data "{\"title\":\"$title\",\"head\":\"$head\",\"base\":\"$base\",\"maintainer_can_modify\":true}" \
     -XPOST "https://api.github.com/repos/$repo/pulls"

###

git checkout -
git branch -D "$branch"
