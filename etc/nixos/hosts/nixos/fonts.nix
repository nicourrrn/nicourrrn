{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    jetbrains-mono
    nerd-font-patcher
    noto-fonts-color-emoji
  ];
}
