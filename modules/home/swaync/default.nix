{ pkgs, config, ... }:
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
      control-center-margin-top = 4;
      control-center-margin-bottom = 4;
      control-center-margin-right = 4;
      control-center-margin-left = 4;
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
