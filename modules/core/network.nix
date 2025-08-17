# networking configuration
{ pkgs, ... }:
{
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
    firewall = {
      enable = true;
    };
  };

  services = {
    openssh = {
      enable = true;
      settings.UseDns = true;
      hostKeys = [
        {
          path = "/etc/ssh/ssh_host_ed25519_key";
          type = "ed25519";
        }
      ];
    };

    # DNS resolver
    resolved = {
      enable = true;
      dnsovertls = "opportunistic";
    };
  };

  systemd.services.NetworkManager-wait-online.serviceConfig.ExecStart = [
    ""
    "${pkgs.networkmanager}/bin/nm-online -q"
  ];

  # nixpkgs issue#180175
  # systemd.services.NetworkManager-wait-online.enable = false;

  environment.systemPackages = with pkgs; [
    networkmanagerapplet
  ];
}
