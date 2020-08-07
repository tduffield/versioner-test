set -evx

branch="expeditor/make_branch_and_break_${EXPEDITOR_NUMBER}"
git checkout -b "$branch"


version="$(cat VERSION)"
sed -i -r "s/^(\\s*)VERSION: \".+\"/\\1VERSION: \"${version}\"/" .expeditor/nofile.yml

git checkout -
git branch -D "$branch"
