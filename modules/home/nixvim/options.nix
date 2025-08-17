{
  programs.nixvim = {
    clipboard = {
      register = "unnamedplus";
      providers.wl-copy.enable = true;
    };

    opts =
      let
        indentSize = 2;
      in
      {
        termguicolors = true;
        showmode = true;
        laststatus = 3;
        statusline = " %t %m%r%h%w%=%y [%{&ff}] %3p%% %4l/%-4L:%-3c ";
        fillchars = {
          eob = " ";
        };

        winborder = "single";

        splitright = true;
        splitbelow = true;

        mouse = "a";
        nu = true;
        relativenumber = false;
        cursorline = true;
        wrap = false;

        tabstop = indentSize;
        smarttab = true;
        softtabstop = indentSize;
        shiftwidth = indentSize;

        swapfile = false;
        undofile = true;
        undolevels = 30000;
        backup = false;
        breakindent = true;

        completeopt = [
          "menuone"
          "noselect"
          "noinsert"
        ];

        ignorecase = true;
        inccommand = "split";
        linebreak = true;
        list = true;

        expandtab = true;
        foldcolumn = "1";
        foldenable = false;
        foldlevel = 5;
        foldlevelstart = 99;

        scrolloff = 12;
        sidescrolloff = 12;
      };
  };
}
