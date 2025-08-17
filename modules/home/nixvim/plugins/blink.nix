{ pkgs, ... }:
{

  programs.nixvim.plugins = {
    luasnip.enable = true;
    friendly-snippets.enable = true;
    blink-cmp = {
      enable = true;
      settings = {
        appearance = {
          use_nvim_cmp_as_default = false;
          nerd_font_variant = "normal";
        };
        completion = {
          accept = {
            auto_brackets = {
              enabled = false;
              semantic_token_resolution = {
                enabled = false;
              };
            };
          };
          ghost_text = {
            enabled = false;
          };
          documentation = {
            auto_show = true;
            auto_show_delay_ms = 200;
          };
          list = {
            selection = {
              auto_insert = true;
              preselect = true;
            };
          };
          trigger = {
            show_on_accept_on_trigger_character = true;
            show_on_keyword = true;
            show_on_trigger_character = true;
          };
        };

        keymap = {
          preset = "super-tab";
        };

        signature = {
          enabled = true;
        };

        cmdline = {
          keymap = {
            preset = "inherit";
          };
          completion = {
            menu = {
              auto_show = true;
            };
          };
        };

        fuzzy = {
          implementation = "rust";

          prebuilt_binaries = {
            download = false;
            force_version = "v${pkgs.vimPlugins.blink-cmp.version}";
          };
        };

        snippets = {
          preset = "luasnip";
        };

        sources = {
          default = [
            "buffer"
            "lsp"
            "path"
            "snippets"
          ];
          providers = {
            buffer = {
              name = "Buffer";
              module = "blink.cmp.sources.buffer";
              score_offset = 0;
            };

            lsp = {
              name = "LSP";
              module = "blink.cmp.sources.lsp";
              async = false;
              enabled = true;
              max_items = null;
              min_keyword_length = 0;
              override = null;
              score_offset = 4;
              should_show_items = true;
              timeout_ms = 2000;

              fallbacks = [
                "buffer"
              ];
            };

            path = {
              name = "Path";
              module = "blink.cmp.sources.path";
              score_offset = 0;

              fallbacks = [
                "buffer"
              ];

              opts = {
                label_trailing_slash = true;
                show_hidden_files_by_default = false;
                trailing_slash = false;
              };
            };
          };
        };
      };
    };
  };
  programs.nixvim.highlight = {
    # BlinkCmpMenu = {
    #   bg = "#${palette.base00}";
    #   fg = "#${palette.base03}";
    # };
    # BlinkCmpMenuSelection = {
    #   bg = "#${palette.base0C}";
    #   fg = "#${palette.base00}";
    # };
    # BlinkCmpDoc = {
    #   bg = "#${palette.base00}";
    #   fg = "#${palette.base03}";
    # };
    # BlinkCmpDocSeparator = {
    #   bg = "#${palette.base00}";
    #   fg = "#${palette.base0C}";
    # };
    #
    # BlinkCmpMenuBorder = {
    #   bg = "#${palette.base00}";
    #   fg = "#${palette.base03}";
    # };
    # BlinkCmpDocBorder = {
    #   bg = "#${palette.base00}";
    #   fg = "#${palette.base03}";
    # };
    # Pmenu = {
    #   bg = "#${palette.base00}";
    #   fg = "#${palette.base03}";
    # };
  };
}
