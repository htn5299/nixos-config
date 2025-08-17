{ pkgs, ... }:
let
  rofi-power-menu = pkgs.writeScriptBin "rofi-power-menu" (builtins.readFile ./rofi-power-menu.sh);
in
{
  home.packages = [
    rofi-power-menu
  ];
}
