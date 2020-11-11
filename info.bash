#!/usr/bin/env bash

repos="$(cd "$(dirname "$0")/repos" >/dev/null 2>&1; pwd -P)"

i=$(find "$repos" -name 'issue-*.json' | wc -l | xargs printf "%'d")
p=$(find "$repos" -name 'pull-*.json' | wc -l | xargs printf "%'d")
echo "$repos: $i issues, $p PRs"
echo

for owner in "$repos"/*; do
  for repo in "$owner"/*; do
    i=$(find "$repo" -name 'issue-*.json' | wc -l | xargs printf "%'d")
    p=$(find "$repo" -name 'pull-*.json' | wc -l | xargs printf "%'d")
    echo "$repo: $i issues, $p PRs"
  done
done
