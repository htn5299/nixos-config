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
      # package = pkgs.qogir-theme;
      # name = "Qogir-Dark";

      package = pkgs.adw-gtk3;
      name = "adw-gtk3-dark";
    };
    iconTheme = {
      # package = pkgs.qogir-icon-theme;
      # name = "Qogir-Dark";

      # package = pkgs.arc-icon-theme;
      # name = "Arc";

      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };
    font = {
      name = "Ubuntu Nerd Font";
      # size = 11;
    };
  };
}
