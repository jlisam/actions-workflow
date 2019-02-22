workflow "Branch management workflow" {
  on = "pull_request"
  resolves = [
    "    5\\. branch cleanup",
    "branch cleanup",
  ]
}

action "branch cleanup" {
  uses = "jessfraz/branch-cleanup-action@master"
  secrets = ["GITHUB_TOKEN"]
}
