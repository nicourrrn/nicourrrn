{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "SUPER";
    general = {
      "border_size" = "2";
      "no_border_on_floating" = "yes";

      "gaps_in" = "3";
      "gaps_out" = "6";

      layout = "dwindle";
      "resize_on_border" = "no";
      "extend_border_grab_area" = "10";
    };
    input = {
      "kb_layout" = "us,ua";
      "kb_options" = "grp:caps_toggle";

      sensitivity = "-1";
      "accel_profile" = "adaptive";
      "follow_mouse" = "1";

      touchpad = {
        # "natural_scrolling" = "yes";
        "scroll_factor" = "0.7";
        "disable_while_typing" = "yes";
      };

    };
    "exec-once" = [
      "alacritty"
    ];
    monitor = [
      "eDP-1, highres, 1600x0, 1"
      "HDMI-A-1, 1600x900@60.00Hz, 0x0, 1"
    ];
    bind = [
      ", Print, exec, grimblast copy area"
      "$mainMod, Return, exec, alacritty"
      "$mainMod, D, exec, rofi -show drun"
      "$mainMod, W, togglegroup"
      "$mainMod, $left, changegroupactive, b"
      "ALT, TAB, changegroupactive, f"
      "$mainMod, $right, changegroupactive, f"
      #$mainMod SHIFT, W, lockgroups, lock,

      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"
      "$mainMod, 8, workspace, 8"
      "$mainMod, 9, workspace, 9"
      "$mainMod, 0, workspace, 10"

      "$mainMod SHIFT, 1, movetoworkspace, 1"
      "$mainMod SHIFT, 2, movetoworkspace, 2"
      "$mainMod SHIFT, 3, movetoworkspace, 3"
      "$mainMod SHIFT, 4, movetoworkspace, 4"
      "$mainMod SHIFT, 5, movetoworkspace, 5"
      "$mainMod SHIFT, 6, movetoworkspace, 6"
      "$mainMod SHIFT, 7, movetoworkspace, 7"
      "$mainMod SHIFT, 8, movetoworkspace, 8"
      "$mainMod SHIFT, 9, movetoworkspace, 9"
      "$mainMod SHIFT, 0, movetoworkspace, 10"

      "$mainMod SHIFT, E, exit,"
      "$mainMod SHIFT, Q, killactive,"

      "$mainMod, P, pseudo"
      "$mainMod, S, togglesplit"
      "$mainMod, F, fullscreen"
      "$mainMod, V, togglefloating"
    ];
    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];
  };
}
