{
  wayland.windowManager.hyprland.settings = {
    "$terminal" = "ghostty";
    "$fileManager" = "thunar";
    "$mainMod" = "SUPER";

    bind = [
      "$mainMod, RETURN, exec, $terminal"
      "$mainMod, O, exec, $fileManager"
      "$mainMod, Q, killactive,"
      "$mainMod, V, togglefloating,"
      "$mainMod, F, exec, rofi -show drun -show-icons"
      "$mainMod, W, exec, rofi -show window -show-icons"

      "$mainMod, X, exec, hyprpicker -a"
      "$mainMod SHIFT, X, exec, hyprpicker --format=rgb -a"
      "$mainMod, S, exec, hyprshot -m output" # fullscreen
      "$mainMod SHIFT, S, exec, hyprshot -m region" # region
      "$mainMod SHIFT, H, exec, cliphist list | rofi -dmenu -p 'Clipboard' | cliphist decode | wl-copy"
      "$mainMod SHIFT, L, exec, rofi -show p -modi p:'rofi-power-menu' -theme-str 'window {width: 15em;} listview {lines: 5;}'"
      "$mainMod SHIFT, B, exec, pkill waybar || waybar &"
      "$mainMod, U, exec, swaync-client -t"

      # notification
      # "$mainMod, N,exec, swaync-client -t"

      # screenshot

      # Move focus with mainMod + arrow keys
      "$mainMod, H, movefocus, l"
      "$mainMod, L, movefocus, r"
      "$mainMod, K, movefocus, u"
      "$mainMod, J, movefocus, d"

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

      # Scroll through existing workspaces with mainMod + scroll
      "$mainMod, mouse_down, workspace, e+1"
      "$mainMod, mouse_up, workspace, e-1"
      "$mainMod, N, workspace, e+1"
      "$mainMod, P, workspace, e-1"
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
