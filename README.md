# nixos-config

```sh
# NixOS
nix-switch = "sudo nixos-rebuild switch --flake ~/nixos-config/#${host}";
home-switch = "nix run home-manager --no-write-lock-file -- switch --flake ~/nixos-config#${username}@${host}";
nix-switch-upgrade = "sudo nixos-rebuild switch --upgrade --flake ~/nixos-config#${host}";
nix-flake-update = "nix flake update --flake ~/nixos-config#";
nix-clean = "sudo nix-env -p /nix/var/nix/profiles/system --list-generations && nix-collect-garbage -d && sudo nix-collect-garbage --delete-older-than 2d";
```
