{ pkgs, ... }:
let
  system-packages = import ./system-packages.nix { inherit pkgs; };
in
{
  # Загальні параметри системи
  system.stateVersion = "25.05";
  environment.systemPackages = system-packages;
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  users.users.nicourrrn = {
    isNormalUser = true;
    description = "nicourrrn";
    extraGroups = [
      "wheel"
      "networkmanager"
      "audio"
      "video"
      "games"
    ];
    shell = pkgs.fish;
  };
  # nixpkgs.config = {
  #   allowUnfree = true;
  #   android_sdk.accept_license = true;
  # };
}
