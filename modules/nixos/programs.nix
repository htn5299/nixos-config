{ pkgs, ... }:
{
  programs.zsh.enable = true;
  hardware.opentabletdriver.enable = true;
  environment.systemPackages = with pkgs; [
    godot
  ];
  nixpkgs.config.android_sdk.accept_license = true;
}
