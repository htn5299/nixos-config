[
  # Move the cursor based on physical lines, not the actual lines
  {
    mode = "n";
    key = "j";
    action = "v:count == 0 ? 'gj' : 'j'";
    options = {
      expr = true;
    };
  }
  {
    mode = "n";
    key = "k";
    action = "v:count == 0 ? 'gk' : 'k'";
    options = {
      expr = true;
    };
  }

  # Go to start or end of line easier
  {
    mode = [
      "n"
      "x"
    ];
    key = "H";
    action = "^";
  }
  {
    mode = [
      "n"
      "x"
    ];
    key = "L";
    action = "g_";
  }

  {
    mode = [
      "i"
      "x"
      "n"
      "s"
    ];
    key = "<C-s>";
    action = "<cmd>w<cr><esc>";
    options = {
      desc = "Save File";
    };
  }

  {
    mode = "n";
    key = "<leader>q";
    action = "<cmd>q<cr>";
    options = {
      desc = "Quit";
    };
  }

  # Clear search highlighting
  {
    mode = "n";
    key = "<esc>";
    action = ":nohlsearch<cr>";
    options = {
      silent = true;
    };
  }

  # Keep matches center screen when cycling with n|N
  {
    mode = "n";
    key = "n";
    action = "'Nn'[v:searchforward].'zv'";
    options = {
      expr = true;
      desc = "next search result";
    };
  }
  {
    mode = "x";
    key = "n";
    action = "'Nn'[v:searchforward]";
    options = {
      expr = true;
      desc = "next search result";
    };
  }
  {
    mode = "o";
    key = "n";
    action = "'Nn'[v:searchforward]";
    options = {
      expr = true;
      desc = "next search result";
    };
  }
  {
    mode = "n";
    key = "N";
    action = "'nN'[v:searchforward].'zv'";
    options = {
      expr = true;
      desc = "prev search result";
    };
  }
  {
    mode = "x";
    key = "N";
    action = "'nN'[v:searchforward]";
    options = {
      expr = true;
      desc = "prev search result";
    };
  }
  {
    mode = "o";
    key = "N";
    action = "'nN'[v:searchforward]";
    options = {
      expr = true;
      desc = "prev search result";
    };
  }

  # Move lines
  {
    mode = "v";
    key = "<C-j>";
    action = ":m '>+1<CR>gv=gv";
  }
  {
    mode = "v";
    key = "<C-k>";
    action = ":m '<-2<CR>gv=gv";
  }

  # Quickfix navigation
  {
    mode = "n";
    key = "<M-j>";
    action = "<cmd>cnext<cr>";
  }
  {
    mode = "n";
    key = "<M-k>";
    action = "<cmd>cprev<cr>";
  }

  # Keep visual selection when indenting
  {
    mode = "x";
    key = ">";
    action = ">gv";
  }
  {
    mode = "x";
    key = "<";
    action = "<gv";
  }

  # navigate to left/right/up/down window
  {
    mode = "n";
    key = "<C-h>";
    action = "<C-w>h";
    options = {
      desc = "left window";
    };
  }
  {
    mode = "n";
    key = "<C-j>";
    action = "<C-w>j";
    options = {
      desc = "down window";
    };
  }
  {
    mode = "n";
    key = "<C-k>";
    action = "<C-w>k";
    options = {
      desc = "up window";
    };
  }
  {
    mode = "n";
    key = "<C-l>";
    action = "<C-w>l";
    options = {
      desc = "right window";
    };
  }

  # Resize window
  {
    mode = "n";
    key = "<C-Up>";
    action = "<cmd>resize +2<cr>";
    options.desc = "Increase Window Height";
  }
  {
    mode = "n";
    key = "<C-Down>";
    action = "<cmd>resize -2<cr>";
    options.desc = "Decrease Window Height";
  }
  {
    mode = "n";
    key = "<C-Left>";
    action = "<cmd>vertical resize -2<cr>";
    options.desc = "Decrease Window Width";
  }
  {
    mode = "n";
    key = "<C-Right>";
    action = "<cmd>vertical resize +2<cr>";
    options.desc = "Increase Window Width";
  }

  # unmap
  {
    key = "<C-a>";
    action = "<Nop>";
    mode = "n"; # normal mode
    options = {
      noremap = true;
      silent = true;
    };
  }
]
