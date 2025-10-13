{ pkgs, ... }:
{
  fonts = {
    packages = (
      with pkgs;
      [
        nerd-fonts.jetbrains-mono
        nerd-fonts.ubuntu
        nerd-fonts.noto
      ]
    );
    fontDir.enable = true;
    fontconfig = {
      defaultFonts = {
        serif = [
          "NotoSerif Nerd Font"
        ];
        sansSerif = [
          "NotoSans Nerd Font"
        ];
        monospace = [
          "JetBrainsMono Nerd Font"
        ];
      };
    };
  };
}
