workflow "Copy main.pdf" {
  resolves = ["Upload artifact"]
  on = "push"
}

action "Upload artifact" {
  uses = "actions/upload-artifact@e20a7983ecacb840d6004bbaa6dd6f75eaff8af7"
}
