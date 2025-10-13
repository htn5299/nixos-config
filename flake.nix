{
  description = "NixOS configuration";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    hyprland.url = "github:hyprwm/Hyprland";
    nix-colors.url = "github:misterio77/nix-colors";
    nur.url = "github:nix-community/NUR";

    lanzaboote = {
      url = "github:nix-community/lanzaboote/v0.4.1";
      inputs.flake-compat.follows = "";
      inputs.pre-commit-hooks-nix.follows = "";
    };

    minimal-tmux = {
      url = "github:niksingh710/minimal-tmux-status";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    let
      username = "htn";
      homeStateVersion = "24.11";
      system = "x86_64-linux";
      hosts = [
        "pavilion"
        "thinkpad"
      ];

      mkHost =
        hostname:
        nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs hostname username; };
          modules = [ ./hosts/${hostname}/configuration.nix ];
        };

      mkHome =
        hostname:
        home-manager.lib.homeManagerConfiguration {
          pkgs = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
          };
          extraSpecialArgs = {
            inherit
              inputs
              hostname
              username
              homeStateVersion
              ;
          };
          modules = [ ./hosts/${hostname}/home-manager.nix ];
        };
    in
    {
      nixosConfigurations = nixpkgs.lib.genAttrs hosts mkHost;
      homeConfigurations =
        nixpkgs.lib.genAttrs hosts (hostname: mkHome hostname)
        // nixpkgs.lib.mapAttrs' (h: v: nixpkgs.lib.nameValuePair "${username}@${h}" v) (
          nixpkgs.lib.genAttrs hosts mkHome
        );
    };
}
