{
  # Enable the uinput module
  boot.kernelModules = [ "uinput" ];

  # Enable uinput
  hardware.uinput.enable = true;

  # Set up udev rules for uinput
  services.udev.extraRules = ''
    KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"
    SUBSYSTEM=="hidraw", ATTRS{idVendor}=="41e4", ATTRS{idProduct}=="2103", MODE="0777"
    SUBSYSTEM=="hidraw", ATTRS{idVendor}=="373b", ATTRS{idProduct}=="10c9", MODE="0777"
  '';

  # Ensure the uinput group exists
  users.groups.uinput = { };

  # Add the Kanata service user to necessary groups
  systemd.services.kanata-internalKeyboard.serviceConfig = {
    SupplementaryGroups = [
      "input"
      "uinput"
    ];
  };

  services.kanata = {
    enable = true;
    keyboards = {
      internalKeyboard = {
        devices = [
          # Replace the paths below with the appropriate device paths for your setup.
          # Use `ls /dev/input/by-path/` to find your keyboard devices.
          # "/dev/input/by-path/platform-i8042-serio-0-event-kbd"
          # "/dev/input/by-path/pci-0000:00:14.0-usbv2-0:1:1.1-event-kbd"
          # "/dev/input/by-path/pci-0000:00:14.0-usbv2-0:7:1.0-event-kbd"
        ];
        extraDefCfg = "process-unmapped-keys yes";
        config = ''
          (defsrc
            caps
          )

          (deflayer default
            @cap
          )

          (defalias
            cap (tap-hold-press 200 200 esc lmet)
          )
        '';
      };
    };
  };
}
