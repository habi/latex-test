workflow "My build" {
  resolves = [
    "git command",
  ]
  on = "push"
}

action "git command" {
  uses = "srt32/git-actions@v0.0.3"
  args = "git status"
}
