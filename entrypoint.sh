#!/bin/sh -l
set -eux

# where am I?
pwd

# print environment variables
env

# pretty-print the JSON event payload
jq -r . $GITHUB_EVENT_PATH

# pretty-print the workspace file structure
tree -I .git -I node_modules --charset utf8

# pretty-print the dependency graph
npm ls
