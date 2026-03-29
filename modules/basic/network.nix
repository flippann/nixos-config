{ config, inputs, pkgs, ... }:

{

  # Enable networking
  networking.networkmanager.enable = true;

  # Cloudflare and Google dns
  networking.nameservers = [ "1.1.1.1" "8.8.8.8" ];
  networking.networkmanager.dns = "none";

}
