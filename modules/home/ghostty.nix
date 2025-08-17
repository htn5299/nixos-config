{ config, ... }:
let
  palette = config.colorScheme.palette;
in
{
  programs.ghostty = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      font-family = [
        "JetBrainsMono Nerd Font"
      ];
      font-size = "12";
      font-feature = [
        "calt"
        "ss03"
      ];

      bold-is-bright = false;
      selection-invert-fg-bg = false;

      # Theme
      theme = "custom_theme";

      resize-overlay = "never";
      copy-on-select = false;
      confirm-close-surface = false;
      mouse-hide-while-typing = true;

      window-theme = "ghostty";
      # window-padding-x = 4;
      # window-padding-y = 6;
      window-padding-balance = true;
      window-padding-color = "background";
      window-inherit-working-directory = true;
      window-inherit-font-size = true;
      window-decoration = false;

      gtk-titlebar = false;
      gtk-single-instance = false;
      gtk-tabs-location = "bottom";
      gtk-wide-tabs = false;

      auto-update = "off";
      term = "ghostty";
      clipboard-paste-protection = false;

      keybind = [
        "shift+end=unbind"
        "shift+home=unbind"
        "ctrl+shift+left=unbind"
        "ctrl+shift+right=unbind"
        "shift+enter=text:\n"
        "ctrl+enter=unbind"
        "ctrl+shift+space=toggle_window_decorations"
      ];
    };

    themes.custom_theme = {
      background = "${palette.base00}";
      foreground = "${palette.base05}";

      cursor-color = "${palette.base05}";

      selection-background = "${palette.base06}";
      selection-foreground = "${palette.base00}";

      palette = [
        "0=#${palette.base00}"
        "1=#${palette.base08}"
        "2=#${palette.base0B}"
        "3=#${palette.base0A}"
        "4=#${palette.base0D}"
        "5=#${palette.base0E}"
        "6=#${palette.base0C}"
        "7=#${palette.base04}"
        "8=#${palette.base07}"
        "9=#${palette.base08}"
        "10=#${palette.base0B}"
        "11=#${palette.base0A}"
        "12=#${palette.base0D}"
        "13=#${palette.base0E}"
        "14=#${palette.base0C}"
        "15=#${palette.base05}"
      ];
    };
  };
}
