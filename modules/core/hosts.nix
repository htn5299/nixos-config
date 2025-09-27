{ config, pkgs, ... }:

{
  networking.extraHosts = ''
    127.0.0.1 www.facebook.com
    127.0.0.1 www.instagram.com
    127.0.0.1 www.threads.com
    127.0.0.1 www.tiktok.com
    127.0.0.1 www.pinterest.com
    127.0.0.1 www.reddit.com
    127.0.0.1 www.quora.com
  '';
}
