{ pkgs, ... }:
let
  system-packages = import ./system-packages.nix { inherit pkgs; };
in
{
  # Загальні параметри системи
  system.stateVersion = "25.05";

  nixpkgs.hostPlatform = {
    system = "x86_64-linux";
  };

  environment.systemPackages = system-packages;

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];
    config.common.default = "hyprland";
  };

  nix.settings.trusted-users = [ "root" "nicourrrn" ];
  nix.extraOptions = ''
    extra-substituters = https://devenv.cachix.org
    extra-trusted-public-keys = devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw=
  '';

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };
  programs.fish.enable = true;

  imports = [
    ./fonts.nix
  ];
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
  security.sudo.enable = true;

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --cmd Hyprland";
      };
    };
  };
  nixpkgs.config.android_sdk.accept_license = true;
  # services.dunst = {
  #   enable = true;
  # };
}
