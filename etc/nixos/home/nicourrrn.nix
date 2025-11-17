{ pkgs, flake-packages, ... }:
let
  user-packages = import ./user-packages.nix {
    inherit pkgs;
    inherit flake-packages;
  };
in
{
  home.username = "nicourrrn";
  home.homeDirectory = "/home/nicourrrn";
  home.packages = user-packages;
  home.stateVersion = "25.05";
  home.sessionVariables = {
    GOOGLE_CLOUD_PROJECT = "awesome-task-tracker";
    EDITOR = "zeditor";
    CHROME_EXECUTABLE = "thorium";
    NIXPKGS_ACCEPT_ANDROID_SDK_LICENSE = 1;
  };
  imports = [
    ./config
  ];
}
