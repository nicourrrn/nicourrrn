{ config, pkgs, ... }:
let
  system-fonts = import ./fonts.nix { inherit pkgs; };
  system-packages = import ./system-packages.nix { inherit pkgs; };
in
{
  # Загальні параметри системи
  system.stateVersion = "25.05";

  environment.systemPackages = system-packages;

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };
  programs.zsh.enable = true;
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
    shell = pkgs.zsh;
  };
  security.sudo.enable = true;

  # Replace to config files
  # programs.hyprland.enable = true;
  # programs.zsh.enable = true;

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
