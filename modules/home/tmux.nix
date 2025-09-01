{
  pkgs,
  config,
  inputs,
  ...
}:
{
  programs.tmux = with config.colorScheme.palette; {
    enable = true;
    shell = "${pkgs.zsh}/bin/zsh";
    baseIndex = 1;
    mouse = true;
    escapeTime = 0;
    keyMode = "vi";
    plugins = with pkgs; [
      {
        plugin = inputs.minimal-tmux.packages.${pkgs.system}.default;
        extraConfig = ''
          # set -g @minimal-tmux-justify "centre"
          set -g @minimal-tmux-justify "left"
          set -g @minimal-tmux-fg "#${base05}"
          set -g @minimal-tmux-bg "default"
          set -g @minimal-tmux-indicator-str ' '
        '';
      }
      tmuxPlugins.yank
      tmuxPlugins.better-mouse-mode
      tmuxPlugins.vim-tmux-navigator
    ];
    extraConfig =

      ''
        set-option -g automatic-rename on
        set -g default-terminal "tmux-256color"
        set -ag terminal-overrides ",xterm-256color:RGB"
        set -g set-titles on
        set-option -g automatic-rename-format '#{b:pane_current_path}'
        set-option -g history-limit 20000
        set-option -g pane-base-index 1
        set-option -g renumber-windows on
        set-option -g set-clipboard on
        set-option -g status on
        set-option -g status-interval 1
        set-option -g wrap-search off

        set -g status-position top
        set -g allow-passthrough on

        set -g status-style 'fg=#${base03},bg=default'

        set -g message-command-style bg=default,fg=#${base0A}
        set -g message-style bg=default,fg=#${base0A}

        set -g mode-style bg=#${base02},fg=#${base0B}

        set -g pane-active-border-style 'fg=#${base0F},bg=default'
        set -g pane-border-style 'fg=#${base03},bg=default'

        set -g window-status-format '#[fg=#${base03}]#{window_index}:#{window_name}#{window_flags} '
        set -g window-status-current-format '#[fg=#${base05}]#{window_index}:#{window_name}#{window_flags} '

        # set -g status-right '#S '
        set -g status-right '#(cd #{pane_current_path}; git rev-parse --abbrev-ref HEAD) '


        # keybindings
        unbind C-b
        unbind r
        unbind-key -T copy-mode-vi MouseDragEnd1Pane
        bind-key -T copy-mode-vi MouseDown1Pane select-pane\; send-keys -X clear-selection
        bind -n MouseDrag1Pane if -Ft= '#{mouse_any_flag}' 'if -Ft= \"#{pane_in_mode}\" \"copy-mode -eM\" \"send-keys -M\"' 'copy-mode -eM'
        set -g prefix C-a
        bind C-a send-prefix
        bind c new-window -c "#{pane_current_path}"
        bind s split-window -v -c "#{pane_current_path}"
        bind v split-window -h -c "#{pane_current_path}"
        bind space last-window
        bind r source-file ~/.config/tmux/tmux.conf \; display "tmux reloaded!"
      '';
  };
}
