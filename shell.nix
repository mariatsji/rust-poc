let nixpkgs = import (builtins.fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/refs/tags/23.11.tar.gz";
  }) {};

in nixpkgs.mkShell {
  name = "rust-poc";
  buildInputs = with nixpkgs; [ cargo rustc rust-analyzer ];
}

