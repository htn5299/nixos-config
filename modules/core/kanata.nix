{

  services.kanata = {
    enable = true;
    keyboards = {
      internalKeyboard = {
        devices = [
          # Replace the paths below with the appropriate device paths for your setup.
          # Use `ls /dev/input/by-path/` to find your keyboard devices.
          "/dev/input/by-path/platform-i8042-serio-0-event-kbd"
          "/dev/input/by-path/pci-0000:00:14.0-usb-0:1:1.1-event-kbd"
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
