{ config, ... }:
{
  programs.hyprlock = with config.colorScheme.palette; {
    enable = true;
    settings = {
      general = {
        disable_loading_bar = true;
        grace = 10;
        hide_cursor = true;
        no_fade_in = false;
      };

      background = {
        monitor = "";
        path = "screenshot";
        blur_size = 9;
        blur_passes = 3;
        brightness = 0.2;
      };

      label = [
        {
          monitor = "";
          text = ''cmd[update:1000] echo $(date +"%H:%M, %d-%m-%y")'';
          color = "0xFF${base04}";
          font_size = 13;
          font_family = "Ubuntu Nerd Font";
          position = "-8, -8";
          halign = "right";
          valign = "top";
        }
      ];

      input-field = {
        monitor = "";
        size = "240, 40";
        outline_thickness = 1;
        dots_size = 0.26; # Scale of input-field height, 0.2 - 0.8
        dots_spacing = 0.15; # Scale of dots' absolute size, 0.0 - 1.0
        dots_center = true;
        dots_rounding = -1; # -1 default circle, -2 follow input-field rounding
        inner_color = "0x00${base00}";
        outer_color = "0xFF${base03}";
        font_color = "0xFF${base0F}";
        hide_input = false;
        rounding = 0;
        check_color = "0xFF${base0F}";
        fail_color = "0xFF${base08}"; # if authentication failed, changes outer_color and fail message color
        position = "0, 0";
        halign = "center";
        valign = "center";
      };
    };
  };
}
