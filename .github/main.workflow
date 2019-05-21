workflow "push workflow" {
  on = "push"
  resolves = ["push action"]
}

action "push action" {
  uses = "./"
  args = "\"this is a push\""
}

workflow "delete workflow" {
  resolves = ["delete action"]
  on = "delete"
}

action "delete action" {
  uses = "./"
  args = "\"this is a delete\""
}

workflow "create workflow" {
  resolves = ["create action"]
  on = "create"
}

action "create action" {
  uses = "./"
  args = "\"this is a create\""
}

workflow "pull_request workflow" {
  on = "pull_request"
  resolves = ["pull_request action"]
}

action "pull_request action" {
  uses = "./"
  args = "\"this is a pull_request\""
}

workflow "issue workflow" {
  on = "issues"
  resolves = ["issue action"]
}

action "issue action" {
  uses = "./"
  args = "\"this is an issue\""
}
