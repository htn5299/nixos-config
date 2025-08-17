{ pkgs, ... }:
{
  fonts = {
    packages = (
      with pkgs;
      [
        nerd-fonts.hack
        nerd-fonts.jetbrains-mono
        nerd-fonts.ubuntu
        nerd-fonts.noto
        nerd-fonts.caskaydia-mono
        nerd-fonts.roboto-mono
        nerd-fonts.blex-mono
        nerd-fonts.gohufont
        nerd-fonts.im-writing

        noto-fonts-emoji
        liberation_ttf
      ]
    );
    fontDir.enable = true;
    fontconfig = {
      defaultFonts = {
        monospace = [
          "JetBrainsMono Nerd Font Mono"
        ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };
}
