{
  programs.nixvim.plugins = {
    trouble.enable = true;
  };
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics toggle<CR>";
      options = {
        desc = "Trouble diagnostics toggle";
      };
    }
    {
      mode = "n";
      key = "]c";
      action = "<cmd>lua require('trouble').next {skip_groups = true, jump = true }<CR>";
      options = {
        desc = "Trouble next";
      };
    }
    {
      mode = "n";
      key = "[c";
      action = "<cmd>lua require('trouble').prev {skip_groups = true, jump = true }<CR>";
      options = {
        desc = "Trouble prev";
      };
    }
  ];
}
