{ pkgs, ... }:
let
  pomodoro-timer = pkgs.writeScriptBin "pomodoro-timer" (builtins.readFile ./pomodoro-timer.py);
  rofi-power-menu = pkgs.writeScriptBin "rofi-power-menu" (builtins.readFile ./rofi-power-menu.sh);
  system-notify = pkgs.writeScriptBin "system-notify" (builtins.readFile ./system-notify.sh);
in
{
  home.packages = [
    pomodoro-timer
    rofi-power-menu
    system-notify
  ];
}
