{ pkgs, flake-packages, ... } :
with pkgs; [
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
  # Coding
  httpie
  zed-editor
  # Utils
  keepassxc
  easyeffects
  # Social
  firefox
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
  flake-packages.nil.packages.${system}.nil
]
