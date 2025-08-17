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
      # Nordic  Nordic-bluish-accent  Nordic-bluish-accent-standard-buttons  Nordic-darker  Nordic-darker-standard-buttons  Nordic-Polar  Nordic-Polar-standard-buttons  Nordic-standard-buttons
      package = pkgs.nordic;
      name = "Nordic-darker";
    };
    iconTheme = {
      # Nordzy       Nordzy-cyan-dark  Nordzy-green       Nordzy-orange       Nordzy-pink       Nordzy-purple       Nordzy-red       Nordzy-turquoise       Nordzy-yellow
      # Nordzy-cyan  Nordzy-dark       Nordzy-green-dark  Nordzy-orange-dark  Nordzy-pink-dark  Nordzy-purple-dark  Nordzy-red-dark  Nordzy-turquoise-dark  Nordzy-yellow-dark
      package = pkgs.nordzy-icon-theme;
      name = "Nordzy-dark";
    };
    font = {
      name = "Ubuntu Nerd Font";
      size = 11;
    };
  };
}
