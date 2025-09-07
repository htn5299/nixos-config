{ pkgs, config, ... }:
{
  services.swaync = {
    enable = true;
    style = ./style.css;
    settings = {
      "$schema" = "/etc/xdg/swaync/configSchema.json";
      positionX = "right";
      positionY = "bottom";
      control-center-positionX = "none";
      control-center-positionY = "none";
      control-center-margin-top = 0;
      control-center-margin-bottom = 0;
      control-center-margin-right = 0;
      control-center-margin-left = 0;
      control-center-width = 400;
      control-center-height = -1;
      fit-to-screen = true;
      layer-shell-cover-screen = true;

      layer-shell = true;
      layer = "overlay";
      control-center-layer = "overlay";
      cssPriority = "user";

      notification-icon-size = 64;

      notification-body-image-height = 100;
      notification-body-image-width = 200;
      notification-inline-replies = true;
      timeout = 10;
      timeout-low = 5;
      timeout-critical = 0;
      notification-window-width = 400;
      keyboard-shortcuts = true;
      image-visibility = "when-available";
      transition-time = 200;
      hide-on-clear = false;
      hide-on-action = true;
      script-fail-notify = true;
      widgets = [
        "title"
        "dnd"
        "mpris"
        "notifications"
      ];
      widget-config = {
        notifications = {
          vexpand = false;
        };
        inhibitors = {
          text = "Inhibitors";
          clear-all-button = true;
          button-text = "Clear All";
        };
        title = {
          text = "Notifications";
          clear-all-button = true;
          button-text = "Clear All";
        };
        dnd = {
          text = "Do Not Disturb";
        };
        label = {
          max-lines = 5;
          text = "Label Text";
        };
        mpris = {
          autohide = true;
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
