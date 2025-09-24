{ config, ... }:
{
  services.swaync = {
    enable = true;
    style = ./style.css;
    settings = {
      "$schema" = "/etc/xdg/swaync/configSchema.json";

      # Display settings
      ignore-gtk-theme = true;
      positionX = "right";
      positionY = "top";
      layer = "overlay";
      control-center-layer = "top";
      layer-shell = true;
      layer-shell-cover-screen = true;
      cssPriority = "user";

      # Margins
      control-center-margin-top = 4;
      control-center-margin-bottom = 4;
      control-center-margin-right = 4;
      control-center-margin-left = 0;

      # Notification settings
      notification-2fa-action = true;
      notification-inline-replies = false;
      notification-body-image-height = 100;
      notification-body-image-width = 200;

      # Timeouts
      timeout = 10;
      timeout-low = 5;
      timeout-critical = 0;

      # Layout settings
      fit-to-screen = true;
      relative-timestamps = true;
      control-center-width = 400;
      control-center-height = 600;
      notification-window-width = 400;

      # Behavior settings
      keyboard-shortcuts = true;
      notification-grouping = true;
      image-visibility = "when-available";
      transition-time = 200;
      hide-on-clear = false;
      hide-on-action = true;
      text-empty = "No Notifications";
      script-fail-notify = true;

      # Scripts
      scripts = {
        example-script = {
          exec = "echo 'Do something...'";
          urgency = "Normal";
        };
        example-action-script = {
          exec = "echo 'Do something actionable!'";
          urgency = "Normal";
          run-on = "action";
        };
      };

      # # Notification visibility rules
      # notification-visibility = {
      #   example-name = {
      #     state = "muted";
      #     urgency = "Low";
      #     app-name = "Spotify";
      #   };
      # };

      # Widget configuration
      widgets = [
        "inhibitors"
        "title"
        "dnd"
        "mpris"
        "backlight"
        "volume"
        "notifications"
      ];

      widget-config = {
        inhibitors = {
          text = "Inhibitors";
          button-text = "Clear All";
          clear-all-button = true;
        };
        title = {
          text = "Notifications";
          clear-all-button = true;
          button-text = "Clear All";
        };
        dnd = {
          text = "Do Not Disturb";
        };
        backlight = {
          label = "";
          device = "intel_backlight";
          min = 10;
        };
        volume = {
          label = "";
        };
        label = {
          max-lines = 5;
          text = "Label Text";
        };
        mpris = {
          show-album-art = "always";
          loop-carousel = false;
        };
        buttons-grid = {
          buttons-per-row = 7;
          actions = [
            {
              label = "󰖩";
              type = "toggle";
              active = true;
              command = "sh -c '[[ $SWAYNC_TOGGLE_STATE == true ]] && nmcli radio wifi on || nmcli radio wifi off'";
              update-command = "sh -c '[[ $(nmcli radio wifi) == \"enabled\" ]] && echo true || echo false'";
            }
          ];
        };
      };
    };
  };

  xdg.configFile."swaync/palette.css".text = with config.colorScheme.palette; ''
    @define-color base #${base02};
    @define-color mantle #${base01};
    @define-color surface0 #${base03};
    @define-color surface1 #${base06};
    @define-color surface2 #${base07};
    @define-color subtext0 #${base03};
    @define-color subtext1 #${base04};
    @define-color text #${base05};
    @define-color blue #${base0D};
    @define-color sapphire #${base0C};
    @define-color yellow #${base0A};
    @define-color maroon #${base09};
    @define-color red #${base08};
    @define-color pink #${base0E};
    @define-color crust #${base00};
  '';
}
