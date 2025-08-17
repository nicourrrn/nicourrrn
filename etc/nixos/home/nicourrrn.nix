{ config, pkgs, flake-packages, ...}:
let
  user-packages = import ./user-packages.nix { inherit pkgs; inherit flake-packages; };
in
{
  home.username = "nicourrrn";
  home.homeDirectory = "/home/nicourrrn";
  home.packages = user-packages;
  home.stateVersion = "25.05";
  imports = [
    ./config
  ];
}
