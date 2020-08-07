branch="expeditor/make_branch_and_break_${EXPEDITOR_NUMBER}"
git checkout -b "$branch"

cat /tmp/FILE_NOT_FOUND.txt

git checkout -
git branch -D "$branch"
