{ config, ... }:
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
      gtk-tabs-location = "top";
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

    themes.custom_theme = with config.colorScheme.palette; {
      background = "${base00}";
      foreground = "${base05}";

      cursor-color = "${base05}";

      selection-background = "${base06}";
      selection-foreground = "${base00}";

      palette = [
        "0=#${base00}"
        "1=#${base08}"
        "2=#${base0B}"
        "3=#${base0A}"
        "4=#${base0D}"
        "5=#${base0E}"
        "6=#${base0C}"
        "7=#${base04}"
        "8=#${base07}"
        "9=#${base08}"
        "10=#${base0B}"
        "11=#${base0A}"
        "12=#${base0D}"
        "13=#${base0E}"
        "14=#${base0C}"
        "15=#${base05}"
      ];
    };
  };
}
