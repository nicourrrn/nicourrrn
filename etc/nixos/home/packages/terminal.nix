{ pkgs, flake-packages, ...}:
with pkgs; [
  alacritty
  zellij
  neofetch
  gemini-cli
  # flake-packages.nixified-ai.packages.${pkgs.system}.ollama-cuda
  termdown
  nvd
  just
  bat
  # flake-packages.tuios.packages.${stdenv.hostPlatform.system}.tuios
]
