load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
git_repository(
  name = "io_bazel_rules_jsonnet",
  remote = "https://github.com/bazelbuild/rules_jsonnet.git",
  commit = "f0a8f80dac072d67aebccd8ffb34e0d8858c29f0",
)
load("@io_bazel_rules_jsonnet//jsonnet:jsonnet.bzl", "jsonnet_repositories")
jsonnet_repositories()
