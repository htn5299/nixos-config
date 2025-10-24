{
  username,
  homeStateVersion,
  ...
}:
{
  home = {
    username = username;
    homeDirectory = "/home/${username}";
    stateVersion = homeStateVersion;
  };

  imports = [
    ../../modules/home/hyprland
    ../../modules/home/nixvim
    ../../modules/home/rofi
    ../../modules/home/script
    ../../modules/home/starship
    ../../modules/home/swaync
    ../../modules/home/waybar
    ../../modules/home/cli.nix
    ../../modules/home/ghostty.nix
    ../../modules/home/git.nix
    ../../modules/home/gtk.nix
    ../../modules/home/gui.nix
    ../../modules/home/joplin.nix
    ../../modules/home/kitty.nix
    ../../modules/home/mpv.nix
    ../../modules/home/nix-colors.nix
    ../../modules/home/poweralertd.nix
    ../../modules/home/qt.nix
    ../../modules/home/shell.nix
    ../../modules/home/swww.nix
    ../../modules/home/tmux.nix
    ../../modules/home/translate.nix
    ../../modules/home/xdg.nix
    ../../modules/home/yazi.nix
  ];

  wayland.windowManager.hyprland.settings = {
    monitor = [
      "HDMI-A-1, 1920x1080, 0x0, 1.0"
      "eDP-1,1920x1200, 1920x200, 1.2"

      # ",preferred,auto,1"
      # "eDP-1,disable"
    ];

    workspace = [
      "1,monitor:HDMI-A-1"
      "2,monitor:HDMI-A-1"
      "3,monitor:HDMI-A-1"
      "4,monitor:HDMI-A-1"
      "5,monitor:HDMI-A-1"
      "6,monitor:HDMI-A-1"
      "7,monitor:eDP-1"
      "8,monitor:eDP-1"
      "9,monitor:eDP-1"
      "10,monitor:eDP-1"
    ];
  };
}
