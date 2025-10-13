{ pkgs, ... }:
let
  system-packages = import ./system-packages.nix { inherit pkgs; };
in
{
  # Загальні параметри системи
  system.stateVersion = "25.05";

  environment.systemPackages = system-packages;

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];
    config.common.default = "hyprland";
  };

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
    # shell = "${pkgs.xonsh}/bin/xonsh";
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
  # services.dunst = {
  #   enable = true;
  # };
}
