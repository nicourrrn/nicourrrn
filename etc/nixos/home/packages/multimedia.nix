{ pkgs, flake-packages, ... }:
with pkgs; [
  vlc
  easyeffects
  spotify
  spotifyd
  libreoffice-qt6-fresh
  gimp
  loupe
  cava
  obs-studio
  obsidian
  flake-packages.zen-browser.packages.${system}.default
  flake-packages.thorium.packages.${system}.thorium-avx2
]
