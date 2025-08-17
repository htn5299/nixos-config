{ pkgs, config, ... }:
let
  palette = config.colorScheme.palette;
in
{
  #  use later
  services.swaync = {
    enable = true;
    style = ./style.css;
    settings = {
      "$schema" = "/etc/xdg/swaync/configSchema.json";
      positionX = "right";
      positionY = "top";
      cssPriority = "user";
      control-center-margin-top = 0;
      control-center-margin-bottom = 0;
      control-center-margin-right = 0;
      control-center-margin-left = 0;
      notification-icon-size = 32;
      notification-body-image-height = 128;
      notification-body-image-width = 200;
      timeout = 15;
      timeout-low = 5;
      timeout-critical = 0;
      fit-to-screen = true;
      control-center-width = 400;
      control-center-height = 915;
      notification-window-width = 375;
      keyboard-shortcuts = true;
      image-visibility = "when-available";
      transition-time = 200;
      hide-on-clear = false;
      hide-on-action = true;
      script-fail-notify = true;
    };
  };

  xdg.configFile."swaync/palette.css".text = ''
    @define-color base #${palette.base02};
    @define-color mantle #${palette.base01};
    @define-color surface0 #${palette.base03};
    @define-color surface1 #${palette.base06};
    @define-color surface2 #${palette.base07};
    @define-color subtext0 #${palette.base03};
    @define-color subtext1 #${palette.base04};
    @define-color text #${palette.base05};
    @define-color blue #${palette.base0D};
    @define-color sapphire #${palette.base0C};
    @define-color yellow #${palette.base0A};
    @define-color maroon #${palette.base09};
    @define-color red #${palette.base08};
    @define-color pink #${palette.base0E};
    @define-color crust #${palette.base00};
  '';
}
