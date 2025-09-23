{
  pkgs,
  ...
}:
{
  programs.mpv = {
    enable = true;
    package = pkgs.mpv-unwrapped.wrapper {
      mpv = pkgs.mpv-unwrapped;
      youtubeSupport = true;
      # Useful scripts. Not my entire config, should probably do that
      scripts = with pkgs; [
        mpvScripts.mpris
        mpvScripts.autoload
        mpvScripts.uosc
        mpvScripts.thumbfast
      ];
    };

    bindings = {
      "Alt+l" = "add sub-scale +0.1";
      "Alt+h" = "add sub-scale -0.1";
      "Alt+j" = "add sub-pos +1";
      "Alt+k" = "add sub-pos -1";
    };

    config = {
      keep-open = "yes";
      autofit = "80%";
      volume = 80;
      volume-max = 100;

      # hwdec = "auto";
      # vo = "gpu";

      alang = "eng,en";
      slang = "eng,en";
      screenshot-format = "png";
      screenshot-high-bit-depth = "yes";
      screenshot-png-compression = 3;
      screenshot-directory = "~/Pictures/Mpv";
      screenshot-template = "%F - [%P] (%#01n)";
      save-position-on-quit = "yes";

      # ytdl
      ytdl-format = "bestvideo[height<=?1080]+bestaudio/best";

      # Show subs, guess on what subs, prioritize japanese, try to fix timings, make subs a bit bigger
      audio-file-auto = "fuzzy";
      autofit-larger = "100%x100%";
      geometry = "50%:50%";

      # OSD
      osd-font = "NotoSans Nerd Font";

      # Sub appearance
      sub-font = "NotoSans Nerd Font";
      sub-auto = "fuzzy";
      sub-color = "1/1/1/1";
      sub-bold = "yes";
      sub-border-style = "background-box";
      sub-outline-size = 0;
      sub-shadow-offset = 4;
      sub-back-color = "0/0/0/0.5";
      sub-pos = 96;
    };
  };
}
