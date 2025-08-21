{ pkgs, ... }:
{

  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.vanilla-dmz;
    name = "DMZ-White";
    size = 24;
  };

  gtk = {
    enable = true;
    theme = {
      package = pkgs.qogir-theme;
      name = "Qogir-Dark";
    };
    iconTheme = {
      package = pkgs.qogir-icon-theme;
      name = "Qogir-Dark";
    };
    font = {
      name = "Ubuntu Nerd Font";
      size = 11;
    };
  };
}
