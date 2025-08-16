{ config, pkgs, ... }:
let
  system-fonts = import ./fonts.nix { inherit pkgs; };
  system-packages = import ./system-packages.nix {inherit pkgs; };
in
{
  imports = [
    ./hardware-configuration.nix
    ./nix-config.nix
  ];

  # Загальні параметри системи
  system.stateVersion = "25.05";
  time.timeZone = "Europe/Kyiv";
  i18n.defaultLocale = "uk_UA.UTF-8";
  console = {
    earlySetup = true;
    font = "cyr-sun16";
    keyMap = "us";
  };

  environment.systemPackages = system-packages;
  fonts.packages = system-fonts;

  boot.loader.systemd-boot.enable = true;

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

  environment.sessionVariables = { NIXOS_OZONE_WL = "1"; };

  virtualisation.docker.enable = true;

  users.users.nicourrrn = {
    isNormalUser = true;
    description = "nicourrrn";
    extraGroups = [ "wheel" "networkmanager" "audio" "video" "games" "docker"];
    shell = pkgs.zsh;
    home = "/home/nicourrrn";
  };
  security.sudo.enable = true;

  # Replace to config files
  programs.hyprland.enable = true;
  programs.zsh.enable = true;
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --cmd Hyprland";
      };
    };
  };
}
