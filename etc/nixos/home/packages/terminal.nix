{ pkgs, flake-packages, ...}:
with pkgs; [
  alacritty
  zellij
  neofetch
  gemini-cli
  ollama-cuda
  termdown
  nvd
  just
  bat
  flake-packages.tuios.packages.${system}.tuios
]
