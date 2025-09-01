{ pkgs, ... }:
{
  home.packages = with pkgs; [
    telegram-desktop
    firefox
    # vesktop
    discord
    qbittorrent
    calibre
    bitwarden-desktop
    figma-linux
    onlyoffice-bin
    krita
    loupe
    zathura
    evince
    thunderbird
    postman
    spotify
    youtube-music
    obs-studio
  ];
}
