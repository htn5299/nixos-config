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
      theme=Nordic-Darker-Solid
    '';
    "Kvantum/Nordic-Darker-Solid".source = "${pkgs.nordic}/share/Kvantum/Nordic-Darker-Solid";
  };

}
