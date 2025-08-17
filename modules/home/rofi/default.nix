{ pkgs, config, ... }:
let
  palette = config.colorScheme.palette;
in
{
  home.packages = with pkgs; [
    rofi-wayland
  ];

  xdg.configFile."rofi/theme.rasi".text = ''
    * {
      foreground: #${palette.base05};
      highlight: #${palette.base05};
      background-color: #${palette.base00};
      active-background: #${palette.base02};
      urgent-background: #${palette.base03};
      urgent-foreground: #${palette.base08};
      actived: #${palette.base0D};
    }
  '';
  xdg.configFile."rofi/config.rasi".source = ./config.rasi;
}
