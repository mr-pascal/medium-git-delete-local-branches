#!/bin/bash

## Delete all branches without upstream
while read branch; do
  upstream=$(git rev-parse --abbrev-ref $branch@{upstream} 2>/dev/null)
  if [[ $? == 0 ]]; then
    ## Found upstream for branch
    echo $branch tracks $upstream
  else
    ## No Upstream! --> delete branch
    git branch -d $branch
  fi
done < <(git for-each-ref --format='%(refname:short)' refs/heads/)