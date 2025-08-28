{ pkgs, flake-packages, ... }:
with pkgs;
[
  vlc
  # Workspace
  alacritty
  zellij
  neofetch
  # Programming
  typescript
  nodePackages.nodejs
  bun
  python3Full
  uv
  rustup
  go
  docker
  # LSP servers
  nixd
  # Coding
  httpie
  zed-editor
  gparted
  # Utils
  keepassxc
  easyeffects
  # Social
  discord-screenaudio
  telegram-desktop
  spotify
  spotifyd
  # Fun
  steam
  protontricks
  # Work
  obsidian
  libreoffice-qt6-fresh
  flake-packages.zen-browser.packages.${system}.default
  flake-packages.thorium.packages.${system}.thorium-avx2
  flake-packages.nil-lsp.packages.${system}.nil
]
