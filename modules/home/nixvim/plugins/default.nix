{ pkgs, ... }:
{
  imports = [
    # ./avante.nix
    ./base16.nix
    ./blink.nix
    ./conform.nix
    ./fzf-lua.nix
    ./git.nix
    ./hl-colors.nix
    ./luasnip.nix
    ./mini.nix
    # ./nvim-tree.nix
    # ./oil.nix
    ./neo-tree.nix
    ./snacks.nix
    ./treesitter.nix
    ./trouble.nix
    ./which-key.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    extraPackages = with pkgs; [
      (python3.withPackages (python-pkgs: [ python-pkgs.pylatexenc ]))
      nixfmt-rfc-style
      black
      cowsay
      dwt1-shell-color-scripts
      fortune
      ghostscript
      gofumpt
      golangci-lint
      golines
      grpcurl
      imagemagick
      isort
      jq
      jupyter
      mermaid-cli
      nixpkgs-fmt
      prettierd
      nodePackages.prettier
      openssl
      postgresql
      rust-analyzer
      rustfmt
      shfmt
      sqlite
      stylua
      tectonic
      terraform
      websocat
      wordnet
      ripgrep
      delta
    ];

    plugins = {
      lz-n.enable = true;
      nix.enable = true;
      neoscroll.enable = true;
      tmux-navigator.enable = true;
      fidget.enable = true;
      barbecue.enable = true;
      hop.enable = true;
      nvim-surround.enable = true;
      nvim-autopairs.enable = true;
      ts-autotag.enable = true;
    };
  };
}
