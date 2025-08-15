{ config, pkgs, ...}:
{
  programs.git = {
    enable = true;
    userName = "nicourrrn";
    userEmail = "s57111702@gmail.com";
  }
  home.packages = [pkgs.httpie];
  home.stateVersion = "25.05";
}
