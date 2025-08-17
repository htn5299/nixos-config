{ pkgs, config, ... }:

{
  # Enable Display Manager
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --sessions ${config.services.displayManager.sessionData.desktops}/share/xsessions:${config.services.displayManager.sessionData.desktops}/share/wayland-sessions --remember --remember-user-session";
        user = "greeter";
      };
    };
  };

  # users.users.greeter = {
  #   isNormalUser = false;
  #   description = "greetd greeter user";
  #   extraGroups = [
  #     "video"
  #     "audio"
  #   ];
  #   linger = true;
  # };

  # environment.systemPackages = with pkgs; [
  #   greetd.tuigreet
  # ];
}
