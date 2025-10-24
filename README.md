# nixos-config

```sh
sudo nixos-rebuild switch --flake ~/nixos-config#${host}
nix run home-manager --no-write-lock-file -- switch --flake ~/nixos-config#${username}@${host}
sudo nixos-rebuild switch --upgrade --flake ~/nixos-config#${host}
nix flake update --flake ~/nixos-config#
sudo nix-env -p /nix/var/nix/profiles/system --list-generations && nix-collect-garbage -d && sudo nix-collect-garbage --delete-older-than 2d
```
