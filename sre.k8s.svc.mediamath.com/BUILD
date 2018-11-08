package(default_visibility = ["//visibility:public"])

load("@io_bazel_rules_jsonnet//jsonnet:jsonnet.bzl", "jsonnet_to_json")

jsonnet_to_json(
  name = "testing",
  src = "testing.jsonnet",
  outs = ["testing_namespaces.json"],
  deps = ["//lib:namespaces"],
  imports = ["../lib"],
)

