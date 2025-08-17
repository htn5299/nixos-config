{ hostname, username, ... }:
{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      directory = {
        fish_style_pwd_dir_length = 5;
        read_only = " 󰌾";
      };
      right_format = "$time";
      time = {
        disabled = false;
        format = "[$time]($style) ";
        time_format = "%T";
        style = "purple";
      };
    };
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
    options = [
      "--cmd cd"
    ];
  };

  programs.zsh = {
    enable = true;
    autocd = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      cat = "bat";
      grep = "rg";
      ls = "eza -lh --git";
      la = "eza -A --git";
      ll = "eza -l --git";
      lla = "eza -lA";
      tree = "eza --icons --tree --group-directories-first";

      # NixOS
      nix-switch = "sudo nixos-rebuild switch --flake ~/nixos-config/#${hostname}";
      home-switch = "nix run home-manager --no-write-lock-file -- switch --flake ~/nixos-config#${username}@${hostname}";
      nix-switch-upgrade = "sudo nixos-rebuild switch --upgrade --flake ~/nixos-config#${hostname}";
      nix-flake-update = "nix flake update --flake ~/nixos-config#";
      nix-clean = "sudo nix-env -p /nix/var/nix/profiles/system --list-generations && nix-collect-garbage -d && sudo nix-collect-garbage --delete-older-than 2d";
    };

    initContent = ''
      export export PATH="''${PATH}:''${HOME}/.local/bin/:''${HOME}/.cargo/bin/:''${HOME}/.fzf/bin/"

      bindkey '^r' fzf-history-widget
      bindkey '^?' backward-delete-char
      bindkey '^e' autosuggest-accept

      # Productivity corner
      declare -A pomo_options
      pomo_options["work"]="52"
      pomo_options["break"]="17"

      pomodoro () {
        if [ -n "$1" -a -n "''${pomo_options["$1"]}" ]; then
        val=$1
        timer ''${pomo_options["$val"]}m -n $val -f
        spd-say "''${val} session done"
        notify-send "''${val} session done"
        fi
      }

      alias work="pomodoro 'work'"
      alias br="pomodoro 'break'"
    '';
  };
}
