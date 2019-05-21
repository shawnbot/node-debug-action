# node-debug-action
Debug your Node/npm setup in the GitHub Actions environment.

### Usage

```hcl
workflow "debug on push" {
  on = "push"
  resolves = "debug"
}

action "debug" {
  uses = "shawnbot/node-debug-action@master"
  args = "hello, world!"
}
```
