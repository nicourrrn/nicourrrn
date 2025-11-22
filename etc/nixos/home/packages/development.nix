{ pkgs, flake-packages, ... }:
with pkgs; [
  zed-editor
  nodePackages.nodejs
  typescript
  bun
  uv
  python314FreeThreading
  rustc
  cargo
  go
  docker
  clang
  androidenv.androidPkgs.androidsdk
  jdk
  nixd # LSP servers
  flake-packages.nil-lsp.packages.${system}.nil
  httpie
  httpie-desktop
  flyctl
  wails
  ngrok
  fvm
  godot
  devenv
]
