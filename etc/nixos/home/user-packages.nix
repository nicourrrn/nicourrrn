{ pkgs, flake-packages, ... }:
with pkgs;
[
  vlc
  # Workspace
  alacritty
  zellij
  neofetch
  # Programming
  nodePackages.nodejs
  typescript
  bun
  # python3
  uv
  rustc
  cargo
  go
  docker
  clang
  # cmake
  # ninja
  # pkg-config
  androidenv.androidPkgs.androidsdk
  jdk
  # LSP servers
  nixd
  gemini-cli
  # Coding
  httpie
  httpie-desktop
  zed-editor
  gparted
  flyctl
  # Utils
  keepassxc
  easyeffects
  # Social
  telegram-desktop
  spotify
  spotifyd
  # Fun
  steam
  protontricks
  # Work
  obsidian
  libreoffice-qt6-fresh
  gimp
  loupe
  cava
  termdown
  qbittorrent-enhanced

  hyprpicker
  vesktop
  zoom-us
  ngrok
  fvm
  nvd
  just
  ripdrag
  bat

  ollama-cuda

  bat
  p7zip
  fuse
  godot

  obs-studio

  flyctl

  python314FreeThreading

  rar
  flake-packages.zen-browser.packages.${system}.default
  flake-packages.thorium.packages.${system}.thorium-avx2
  flake-packages.nil-lsp.packages.${system}.nil
  flake-packages.tuios.packages.${system}.tuios
]
