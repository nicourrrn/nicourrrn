{ pkgs, flake-packages, ... }:
with pkgs; [
  zed-editor
  yaak
  nodePackages.nodejs
  nix-output-monitor
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
  flake-packages.nil-lsp.packages.${stdenv.hostPlatform.system}.nil
  httpie
  httpie-desktop
  flyctl
  wails
  ngrok
  fvm
  godot
  devenv
  flake-packages.fasm2.packages.${stdenv.hostPlatform.system}.default
  # jupyter
]
