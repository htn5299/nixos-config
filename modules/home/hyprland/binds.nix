{
  wayland.windowManager.hyprland.settings = {
    "$terminal" = "ghostty";
    "$fileManager" = "thunar";
    "$mainMod" = "SUPER";

    bind = [
      "$mainMod, Q, killactive,"
      "$mainMod, W, exec, rofi -show window -show-icons"
      "$mainMod, F, exec, rofi -show drun -show-icons"
      "$mainMod, RETURN, exec, $terminal"
      "$mainMod, O, exec, $fileManager"
      "$mainMod ALT, F, togglefloating,"
      "$mainMod ALT, W, togglesplit,"

      "$mainMod, V, exec, cliphist list | rofi -dmenu -p 'clipboard' | cliphist decode | wl-copy"
      "$mainMod ALT, I, exec, hyprpicker -an"
      # "$mainMod ALT, B, exec, pkill waybar || waybar &"
      "$mainMod, R, exec, swaync-client -t"
      "$mainMod ALT, L, exec, rofi -show p -modi p:'rofi-power-menu' -theme-str 'window {width: 15em;} listview {lines: 5;}'"
      ", Print, exec, grimblast --notify --freeze copysave area"

      # Move focus with mainMod + arrow keys
      "$mainMod, H, movefocus, l"
      "$mainMod, L, movefocus, r"
      "$mainMod, K, movefocus, u"
      "$mainMod, J, movefocus, d"

      # Moving windows
      "$mainMod ALT, H,  swapwindow, l"
      "$mainMod ALT, L, swapwindow, r"
      "$mainMod ALT, K,    swapwindow, u"
      "$mainMod ALT, J,  swapwindow, d"

      # Resizeing windows                   X  Y
      "$mainMod CTRL, H,  resizeactive, -60 0"
      "$mainMod CTRL, L, resizeactive,  60 0"
      "$mainMod CTRL, K,    resizeactive,  0 -60"
      "$mainMod CTRL, J,  resizeactive,  0  60"

      # Switch workspaces with mainMod + [0-9]
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

      # Move active window to a workspace with mainMod + ALT + [0-9]
      "$mainMod ALT, 1, movetoworkspace, 1"
      "$mainMod ALT, 2, movetoworkspace, 2"
      "$mainMod ALT, 3, movetoworkspace, 3"
      "$mainMod ALT, 4, movetoworkspace, 4"
      "$mainMod ALT, 5, movetoworkspace, 5"
      "$mainMod ALT, 6, movetoworkspace, 6"
      "$mainMod ALT, 7, movetoworkspace, 7"
      "$mainMod ALT, 8, movetoworkspace, 8"
      "$mainMod ALT, 9, movetoworkspace, 9"
      "$mainMod ALT, 0, movetoworkspace, 10"

      # Scroll through existing workspaces with mainMod + scroll
      "$mainMod, mouse_down, workspace, e+1"
      "$mainMod, mouse_up, workspace, e-1"
      "$mainMod, N, workspace, e+1"
      "$mainMod, P, workspace, e-1"

      # Scratchpad
      "$mainMod, S, togglespecialworkspace,  magic"
      "$mainMod ALT, S, movetoworkspace, special:magic"
    ];

    bindm = [
      # move/resize window
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];
    bindl = [
      # media control
      ", XF86AudioPlay, exec, playerctl play-pause"
      ", XF86AudioPrev, exec, playerctl previous"
      ", XF86AudioNext, exec, playerctl next"

      # volume control: mute
      ", XF86AudioMute, exec, pamixer -t"
    ];
    bindle = [
      # volume control
      ", XF86AudioRaiseVolume, exec, pamixer -i 10"
      ", XF86AudioLowerVolume, exec, pamixer -d 10"

      # brightness control
      ", XF86MonBrightnessUp, exec, brightnessctl set +10%"
      ", XF86MonBrightnessDown, exec, brightnessctl set 10%-"
    ];
  };
}
