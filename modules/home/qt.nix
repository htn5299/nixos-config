{ pkgs, ... }:

{
  qt = {
    enable = true;

    platformTheme.name = "qt5ct";

    style.name = "kvantum";
  };

  xdg.configFile = {
    "Kvantum/kvantum.kvconfig".text = ''
      [General]
      theme=ArcDark
    '';
    "Kvantum/ArcDark".source = "${pkgs.arc-kde-theme}/share/Kvantum/ArcDark";
  };

}
