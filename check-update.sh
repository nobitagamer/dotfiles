#!/bin/bash

cd "$(dirname $0)"

# origin/branch we are interested in
origin="origin"
branch="master"
# last commit hash
commit=$(git log -n 1 --pretty=format:%H "$origin/$branch")

# url of the remote repo
url=$(git remote get-url "$origin")

for line in "$(git ls-remote -h $url)"; do
    fields=($(echo $line | tr -s ' ' ))
    test "${fields[1]}" == "refs/heads/$branch" || continue
    test "${fields[0]}" == "$commit" && echo "" \
        || echo "*" # Has updates
    exit
done

echo "no matching head found on remote"
