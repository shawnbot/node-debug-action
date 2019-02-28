#!/bin/sh
set -eux

# which args did I get?
echo "args: '$*'"

# where am I?
pwd

# debug some git stuff
git status
git config --list

# print environment variables
env

# pretty-print the JSON event payload
jq -r . $GITHUB_EVENT_PATH

# pretty-print the workspace file structure
tree -I .git -I node_modules --charset utf8

# pretty-print the dependency graph
npm ls
