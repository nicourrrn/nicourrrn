{ ... }:
{
  services.hyprpaper.enable = true;
  home.file."Pictures/wallpaper.png".source = ../img/wallpaper.png;
  home.file."Pictures/wallpaper.png".recursive = true;
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
