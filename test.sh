#!/bin/sh
commit=$(git log --format=%B -n 1 68a5ddc)
message=$(echo "$message" | grep -F -e "refactor" -e "feature" )
echo $commit
echo $message
if [ -n "${message}" ]; then
  echo "comment='commented refactor or feature'"
else
  echo "comment='please fix commit'"
fi
