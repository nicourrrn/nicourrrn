{ config, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Загальні параметри системи
  system.stateVersion = "25.05";
  time.timeZone = "Europe/Kyiv";
  i18n.defaultLocale = "uk_UA.UTF-8";

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
  ];
  boot.loader.systemd-boot.enable = true;
  # boot.loader.grub.device = "/dev/sda1";

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

  programs.hyprland.enable = true;
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    neovim
    kitty
    waybar
    wl-clipboard
    networkmanagerapplet
  ];

  users.users.nicourrrn = {
    isNormalUser = true;
    description = "nicourrrn";
    extraGroups = [ "wheel" "networkmanager" "audio" "video" "games"];
    shell = pkgs.zsh;
    home = "/home/nicourrrn";
    packages = with pkgs; [
      firefox
      zed-editor
      alacritty
    ];
  };

  security.sudo.enable = true;

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.hyprland}/bin/Hyprland";
        user = "nicourrrn";
      };
    };
  };
}
