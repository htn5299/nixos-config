{ pkgs, inputs, ... }:
{
  imports = [
    ./config.nix
    ./binds.nix
    ./hyprlock.nix
    ./hypridle.nix

    inputs.hyprland.homeManagerModules.default
  ];

  home.packages = with pkgs; [
    waybar
    # hyprshot # screenshot
    grimblast
    hyprpicker # color picker
    hypridle
    hyprlock
    pavucontrol
    pamixer
    brightnessctl # screen brightness
    playerctl # media player control
    waypaper
    cliphist
    wl-clipboard # clipboard manager
    wayvnc # vnc server
    wev # key event watcher
    wf-recorder # screen recorder
  ];
}
