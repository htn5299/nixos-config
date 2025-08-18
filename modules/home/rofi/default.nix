{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    rofi-wayland
  ];

  xdg.configFile."rofi/theme.rasi".text = with config.colorScheme.palette; ''
    * {
      foreground: #${base05};
      highlight: #${base05};
      background-color: #${base00};
      active-background: #${base02};
      urgent-background: #${base03};
      urgent-foreground: #${base08};
      actived: #${base0D};
    }
  '';
  xdg.configFile."rofi/config.rasi".source = ./config.rasi;
}
