{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    nerd-font-patcher
    noto-fonts-color-emoji
    jetbrains-mono
  ];
}
