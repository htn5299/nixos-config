{ config, ... }:
let
  palette = config.colorScheme.palette;
in
{
  programs.nixvim.highlight = {
    FloatBorder = {
      fg = "#${palette.base03}";
    };

    NormalFloat = { };

    FloatTitle = { };

    WinSeparator = {
      link = "FloatBorder";
    };

    Pmenu = {
      fg = "#${palette.base05}";
    };
    PmenuSel = {
      bg = "#${palette.base02}";
    };
    PmenuSbar = {
      bg = "#${palette.base01}";
    };
    PmenuThumb = {
      link = "PmenuSel";
    };

    LineNr = {
      fg = "#${palette.base03}";
    };

    StatusLine = {
      fg = "#${palette.base03}";
    };

    StatusLineNC = {
      fg = "#${palette.base03}";
    };

    FzfLuaBorder = {
      link = "FloatBorder";
    };

    BlinkCmpMenuBorder = {
      link = "FloatBorder";
    };
    BlinkCmpDocBorder = {
      link = "FloatBorder";
    };
    BlinkCmpSignatureHelpBorder = {
      link = "FloatBorder";
    };

    NvimTreeWindowPicker = {
      bg = "#${palette.base01}";
      fg = "#${palette.base04}";
    };
  };
}
