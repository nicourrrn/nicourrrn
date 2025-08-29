{ lib, ... }:
{
  services.hyprpaper.enable = true;
  home.file."Pictures/wallpaper.png".source = ../img/wallpaper.png;
  home.file."Pictures/wallpaper.png".recursive = true;
  home.activation.createFolders = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    mkdir -p "$HOME/Projects"
    mkdir -p "$HOME/Pictures/Screenshots"
  '';
  services.hyprpaper.settings = {
    ipc = "on";
    preload = [
      "~/Pictures/wallpaper.png"
    ];
    wallpaper = [
      ",~/Pictures/wallpaper.png"
    ];
  };
}
