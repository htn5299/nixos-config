# delete/change/replace without yanking.
[
  {
    mode = "x";
    key = "<leader>p";
    action = "\"_dP";
    options.desc = "Replace without yanking";
  }

  {
    mode = "n";
    key = "<leader>d";
    action = "\"_d";
    options.desc = "Delete without yanking";
  }

  {
    mode = "n";
    key = "<leader>D";
    action = "\"_D";
    options.desc = "Delete until EOL without yanking";
  }

  {
    mode = "n";
    key = "<leader>c";
    action = "\"_c";
    options.desc = "Change without yanking";
  }

  {
    mode = "n";
    key = "<leader>C";
    action = "\"_C";
    options.desc = "Change until EOL without yanking";
  }
]
