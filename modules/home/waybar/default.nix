{ config, ... }:
let
  palette = config.colorScheme.palette;
in
{
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = [
      {
        position = "top";
        reload_style_on_change = true;
        include = [ "${./config.json}" ];
        modules-left = [
          "hyprland/workspaces"
        ];

        modules-center = [
          "hyprland/window"
        ];

        modules-right = [
          "tray"
          "pulseaudio#mic"
          "pulseaudio"
          "idle_inhibitor"
          "custom/notification"
          "battery"
          "custom/power"
          "clock"
        ];
      }
    ];
  };
  home.file.".config/waybar/colors.css".text = ''
    @define-color base00 #${palette.base00};
    @define-color base01 #${palette.base01};
    @define-color base02 #${palette.base02};
    @define-color base03 #${palette.base03};
    @define-color base04 #${palette.base04};
    @define-color base05 #${palette.base05};
    @define-color base06 #${palette.base06};
    @define-color base07 #${palette.base07};
    @define-color base08 #${palette.base08};
    @define-color base09 #${palette.base09};
    @define-color base0A #${palette.base0A};
    @define-color base0B #${palette.base0B};
    @define-color base0C #${palette.base0C};
    @define-color base0D #${palette.base0D};
    @define-color base0E #${palette.base0E};
    @define-color base0F #${palette.base0F};
  '';
}
