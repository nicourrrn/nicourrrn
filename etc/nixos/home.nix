{ config, pkgs, system, inputs, ...}:
{
  imports = [
    inputs.zen-browser.homeModules.beta
  ];

  home.username = "nicourrrn";
  home.homeDirectory = "/home/nicourrrn";

  programs.zsh.enable = true;
  programs.git = {
    enable = true;
    userName = "nicourrrn";
    userEmail = "s57111702@gmail.com";
  };
  programs.zen-browser.enable = true;
  home.packages = with pkgs; [pkgs.httpie];
  home.stateVersion = "25.05";
}
