{ inputs, ... }:
{
  imports = [
    inputs.nix-colors.homeManagerModules.default
  ];

  colorScheme = {
    palette = {
      base00 = "#12120F"; # base        0
      base01 = "#282727"; # mantle
      base02 = "#32322F"; # surface0
      base03 = "#484747"; # surface1
      base04 = "#9EA2A8"; # surface2    7
      base05 = "#BEC2C8"; # text        15
      base06 = "#72728F"; # rosewater
      base07 = "#515673"; # lavender    8
      base08 = "#B4686F"; # red         1 9
      base09 = "#BB7A65"; # peach
      base0A = "#D4B77D"; # yellow      3 11
      base0B = "#93AB7E"; # green       2 10
      base0C = "#81A9A8"; # teal        6 14
      base0D = "#7491AE"; # blue        4 12
      base0E = "#A292A3"; # mauve       5 13
      base0F = "#938AA9"; # flamingo
    };
  };
}
