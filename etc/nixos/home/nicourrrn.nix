{ pkgs, flake-packages, username, lib, ... }:
let
  user-packages = import ./packages {
    inherit pkgs;
    inherit flake-packages;
    inherit lib;
  };
in
{
  home.username = username;
  home.homeDirectory = "/home/${username}";
  home.packages = user-packages;
  home.stateVersion = "25.05";
  imports = [
    ./config
  ];
}
