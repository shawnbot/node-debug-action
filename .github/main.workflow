workflow "push" {
  on = "push"
  resolves = ["debug"]
}

action "debug" {
  uses = "./"
  args = "hello world"
}
