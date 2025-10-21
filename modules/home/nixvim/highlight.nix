{ config, ... }:
{
  programs.nixvim.highlight = with config.colorScheme.palette; {
    FloatBorder = {
      fg = "#${base03}";
    };

    NormalFloat = { };

    FloatTitle = { };

    WinSeparator = {
      link = "FloatBorder";
    };

    AvanteSidebarWinSeparator = {
      link = "FloatBorder";
    };

    Pmenu = {
      fg = "#${base05}";
    };
    PmenuSel = {
      bg = "#${base02}";
    };
    PmenuSbar = {
      bg = "#${base01}";
    };
    PmenuThumb = {
      link = "PmenuSel";
    };

    LineNr = {
      fg = "#${base03}";
    };

    StatusLine = {
      fg = "#${base03}";
    };

    StatusLineNC = {
      fg = "#${base03}";
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
      bg = "#${base01}";
      fg = "#${base04}";
    };

    GitGutterAdd = {
      fg = "#${base0B}";
    };

    GitGutterChange = {
      fg = "#${base0D}";
    };

    GitGutterDelete = {
      fg = "#${base08}";
    };

    GitGutterChangeDelete = {
      fg = "#${base0E}";
    };

    NeoTreeGitConflict = {
      fg = "#${base09}";
    };

    NeoTreeGitUnTracked = {
      fg = "#${base09}";
    };

  };
}
