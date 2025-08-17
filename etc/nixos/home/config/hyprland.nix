{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    "exec-once" = [
      "alacritty"
    ]
    monitor = [
      "eDP-1, highres, 1600x0, 1"
      "HDMI-A-1, 1600x900@60.00Hz, 0x0, 1"
    ];
      bind =
        [
          "$mod, F, exec, firefox"
          ", Print, exec, grimblast copy area"
          "$mod, Return, exec, alacritty"
          "$mod, D, exec, rofi -show drun"
        ]
        ++ (
          builtins.concatLists (builtins.genList (i:
              let ws = i + 1;
              in [
                "$mod, code:1${toString i}, workspace, ${toString ws}"
                "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
              ]
            )
            9)
        );
    };
}
