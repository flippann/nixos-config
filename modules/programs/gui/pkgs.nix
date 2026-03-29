{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
  stoat-desktop
  loupe
  papers
  mousepad
  nautilus
  mission-center
  qbittorrent-enhanced
  bazaar
  ];

}
