workflow "Main workflow" {
  on = "push"
  resolves = ["Icinga 2"]
}

action "Icinga 2" {
  uses = "./build"
}
