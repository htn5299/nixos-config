{ pkgs, ... }:
{
  home.packages = with pkgs; [
    telegram-desktop
    firefox
    # vesktop
    google-chrome
    discord
    qbittorrent
    calibre
    # bitwarden-desktop
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
    maestral-gui
  ];
}
