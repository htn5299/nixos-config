{ config, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;

    package = null;
    portalPackage = null;

    systemd.enable = false;

    settings = {

      env = [
        # Hint Electron apps to use Wayland
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"

        "GDK_BACKEND,wayland,x11,*"
        "SDL_VIDEODRIVER,wayland"
        "CLUTTER_BACKEND,wayland"
        "XDG_SCREENSHOTS_DIR,$HOME/Pictures/screens"
      ];

      exec = [
        "gsettings set org.gnome.desktop.interface color-scheme prefer-dark"
        "gsettings set org.gnome.desktop.interface gtk-theme $gtk_theme"
        "gsettings set org.gnome.desktop.interface icon-theme $icon_theme"
        "gsettings set org.gnome.desktop.interface cursor-theme $cursor_theme"
        "gsettings set org.gnome.desktop.interface cursor-size $cursor_size"
        "gsettings set org.gnome.desktop.wm.preferences button-layout appmenu"
      ];
      exec-once = [
        # "waybar"
        "hyprctl dispatch workspace 2"
        "waypaper --restore"
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
        "fcitx5 -d -r"
        "fcitx5-remote -r"
        ''dconf write /org/gnome/desktop/wm/preferences/button-layout "'appmenu'"''
        ''dconf write /org/gnome/desktop/interface/color-scheme "'prefer-dark'"''
      ];
      workspace = [
        # smart gap
        # "w[tv1]s[false], gapsout:0, gapsin:0"
        # "f[1]s[false], gapsout:0, gapsin:0:"
      ];
      windowrule = [
        # smart gap
        # "bordersize 0, floating:0, onworkspace:w[tv1]s[false]"
        # "rounding 0, floating:0, onworkspace:w[tv1]s[false]"
        # "bordersize 0, floating:0, onworkspace:f[1]s[false]"
        # "rounding 0, floating:0, onworkspace:f[1]s[false]"

        # "move 100%-w-40 40,title:^(Bluetooth Devices)$"
        # "float,title:^(Volume Control)$"
        # "size 1200 800,title:^(Volume Control)$"
        # "move 100%-w-20 40,title:^(Volume Control)$"

        "float,title:^(Bluetooth Devices)$"
        "size 1200 600,title:^(Bluetooth Devices)$"
        "move 100%-w-20 40,title:^(Bluetooth Devices)$"

        "float,title:^(Waypaper)$"
        "size 1200 800,title:^(Waypaper)$"
        "move 100%-w-20 40,title:^(Waypaper)$"
      ];
      windowrulev2 = [
        "float, title:^(Picture-in-Picture)$"
        "opacity 1.0 override 1.0 override, title:^(Picture-in-Picture)$"
        "pin, title:^(Picture-in-Picture)$"
        "opacity 1.0 override 1.0 override, title:^(.*mpv.*)$"
        "idleinhibit focus, class:^(mpv)$"
        "float,class:^(pavucontrol-qt)$"
        "float,class:^(pavucontrol)$"
        "float,class:^(.blueman-manager-wrapped)$"
        "float,class:^(waypaper)$"
        "float,class:^(file_progress)$"
        "float,class:^(confirm)$"
        "float,class:^(dialog)$"
        "float,class:^(download)$"
        "float,class:^(notification)$"
        "float,class:^(error)$"
        "float,class:^(confirmreset)$"
        "float,title:^(Open File)$"
        "float,title:^(branchdialog)$"
        "float,title:^(Confirm to replace files)$"
        "float,title:^(File Operation Progress)$"
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];
      input = {
        kb_layout = "us";
        repeat_delay = 300;
        repeat_rate = 30;
        accel_profile = "flat"; # flat, adaptive
        force_no_accel = true; # Force no mouse acceleration
        follow_mouse = 1;
        sensitivity = 0; # -1.0 - 1.0, 0 means no modification.
      };
      cursor = {
        no_hardware_cursors = true;
      };
      general = with config.colorScheme.palette; {
        gaps_in = 4;
        gaps_out = 8;

        border_size = 1;

        "col.active_border" = "0xFF${base04}";
        "col.inactive_border" = "0xFF${base02}";

        resize_on_border = false;

        allow_tearing = false;
        layout = "dwindle";
      };
      decoration = {
        rounding = 0;
        blur = {
          enabled = true;
          size = 8;
          passes = 2;
        };
        shadow = {
          enabled = false;
        };
      };
      layerrule = [
        "blur, swaync-control-center"
        "ignorezero, swaync-control-center"

        "blur, swaync-notification-window"
        "ignorezero, swaync-notification-window"

        "blur, waybar"
        "ignorezero, waybar"
      ];
      animations = {
        bezier = [
          "easeOutQuint,0.23,1,0.32,1"
          "easeInOutCubic,0.65,0.05,0.36,1"
          "linear,0,0,1,1"
          "almostLinear,0.5,0.5,0.75,1.0"
          "quick,0.15,0,0.1,1"
        ];

        animation = [
          "workspaces, 1, 9, default"
          "global, 1, 10, default"
          "border, 1, 5.39, easeOutQuint"
          "windows, 1, 4.79, easeOutQuint"
          "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
          "windowsOut, 1, 1.49, linear, popin 87%"
          "fadeIn, 1, 1.73, almostLinear"
          "fadeOut, 1, 1.46, almostLinear"
          "fade, 1, 3.03, quick"
          "layers, 1, 3.81, easeOutQuint"
          "layersIn, 1, 4, easeOutQuint, fade"
          "layersOut, 1, 1.5, linear, fade"
          "fadeLayersIn, 1, 1.79, almostLinear"
          "fadeLayersOut, 1, 1.39, almostLinear"
          "workspaces, 1, 1.94, almostLinear, fade"
          "workspacesIn, 1, 1.21, almostLinear, fade"
          "workspacesOut, 1, 1.94, almostLinear, fade"
        ];
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "slave";
        new_on_top = true;
        mfact = 0.5;
      };
    };
  };
}
