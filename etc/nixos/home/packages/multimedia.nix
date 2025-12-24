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
  flake-packages.zen-browser.packages.${stdenv.hostPlatform.system}.default
  flake-packages.thorium.packages.${stdenv.hostPlatform.system}.thorium-avx2
]
