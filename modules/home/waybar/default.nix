{ config, ... }:
{
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    style = ./style.css;
    settings = [
      { include = [ "${./config.jsonc}" ]; }
    ];
  };

  xdg.configFile."waybar/colors.css".text = with config.colorScheme.palette; ''
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
