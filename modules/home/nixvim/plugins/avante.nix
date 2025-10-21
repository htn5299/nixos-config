{
  # Add avante.nvim configuration to your NixVim setup
  programs.nixvim = {
    enable = true;

    # Required plugins for Avante
    plugins = {
      # Avante.nvim configuration
      avante = {
        enable = true;
      };
    };

    # Set up environment variable for API key
    extraConfigLua = ''
      local function read_api_key()
        local file = io.open(vim.fn.expand("~/.config/apikey_plain_text_file"), "r")
        if file then
          local key = file:read("*line")
          file:close()
          return key
        end
        return nil
      end

      vim.env.ANTHROPIC_API_KEY = read_api_key() or vim.env.ANTHROPIC_API_KEY
    '';
  };
}
