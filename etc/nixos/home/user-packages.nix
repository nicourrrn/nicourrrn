{ pkgs, flake-packages, ... }:
with pkgs;
[
  vlc
  # Workspace
  alacritty
  zellij
  neofetch
  # Programming
  zig
  typescript
  nodePackages.nodejs
  bun
  python3
  uv
  rustc
  cargo
  go
  docker
  deno
  # LSP servers
  nixd
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
  gimp
  loupe
  cava
  termdown
  # mkchromecast
  qbittorrent-enhanced

  zoom

  flake-packages.zen-browser.packages.${system}.default
  flake-packages.thorium.packages.${system}.thorium-avx2
  flake-packages.nil-lsp.packages.${system}.nil
]
