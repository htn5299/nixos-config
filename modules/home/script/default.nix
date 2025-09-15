{ pkgs, ... }:
let
  rofi-power-menu = pkgs.writeScriptBin "rofi-power-menu" (builtins.readFile ./rofi-power-menu.sh);
  pomodoro_timer = pkgs.writeScriptBin "pomodoro_timer" (builtins.readFile ./pomodoro_timer.py);
in
{
  home.packages = [
    rofi-power-menu
    pomodoro_timer
  ];
}
