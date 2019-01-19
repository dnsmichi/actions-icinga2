workflow "New workflow" {
  on = "push"
  resolves = ["build"]
}
