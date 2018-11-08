with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "clusters-dev";
  buildInputs = [
    kubectl
    bazel
  ];
}
