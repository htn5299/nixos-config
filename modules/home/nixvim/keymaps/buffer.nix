[
  {
    mode = "n";
    key = "<leader>bd";
    action = "<cmd>bdelete<cr>";
    options = {
      desc = "Close Buffer";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "[b";
    action = "<cmd>bprevious<cr>";
    options = {
      desc = "Open previous buffer";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "]b";
    action = "<cmd>bnext<cr>";
    options = {
      desc = "Move to next buffer";
      silent = true;
    };
  }
]
