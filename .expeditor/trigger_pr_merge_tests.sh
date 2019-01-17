#!/bin/bash
set -evx


branch="expeditor/trigger-acceptance-tests"
git checkout -b ${branch}

date > PR_TRIGGER

git add .
git commit --message "Trigger PR-based acceptance tests." --message "This pull request was triggered automatically by Expeditor." --message "This change falls under the obvious fix policy so no Developer Certificate of Origin (DCO) sign-off is required."

open_pull_request

git checkout -
git branch -D ${branch}
