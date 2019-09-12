workflow "New workflow" {
  on = "push"
  resolves = ["Upload artifact"]
}

action "Upload artifact" {
  uses = "actions/upload-artifact@e20a7983ecacb840d6004bbaa6dd6f75eaff8af7"
}
