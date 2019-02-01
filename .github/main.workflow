workflow "debug" {
  on = "push"
  resolves = ["debug"]
}

action "debug" {
  uses = "."
}
