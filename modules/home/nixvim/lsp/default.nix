{
  programs.nixvim = {
    plugins.schemastore = {
      enable = true;
      json = {
        enable = true;
      };
      yaml = {
        enable = true;
      };
    };
    lsp = {
      inlayHints.enable = true;
      servers = {
        "*" = {
          settings = {
            root_markers = [
              ".git"
            ];
          };
        };
        eslint = import ./eslint.nix;
        lua_ls = import ./lua_ls.nix;
        nixd = import ./nixd.nix;
        tailwindcss = import ./tailwindcss.nix;
        vtsls = import ./vtsls.nix;
        jsonls.enable = true;
        cssls.enable = true;
        yamlls.enable = true;
        gopls.enable = true;
        helm_ls.enable = true;
        html.enable = true; # HTML
        astro.enable = true; # AstroJS
        phpactor.enable = true; # PHP
        svelte.enable = false; # Svelte
        vuels.enable = false; # Vue
        pyright.enable = true; # Python
        dockerls.enable = true; # Docker
        bashls.enable = true; # Bash
        clangd.enable = true; # C/C++
        csharp_ls.enable = true; # C#
        markdown_oxide.enable = true; # Markdown
        ansiblels.enable = true;
        ccls.enable = true;
        earthlyls.enable = true;
        fortls.enable = true;
        golangci_lint_ls.enable = true;
        java_language_server.enable = false;
        jdtls.enable = false;
        nushell.enable = true;
        pylsp.enable = true;
        pylyzer.enable = false;
        qmlls.enable = true;
        ruff_lsp.enable = false;
        superhtml.enable = true;
        terraformls.enable = true;
        veryl_ls.enable = true;
        zls.enable = false;
      };
    };
  };
}
