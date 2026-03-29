{ pkgs, ... }:

{
 
  nixpkgs.config.allowUnfree = true;
  programs.nix-ld.enable = true;

  environment.systemPackages = with pkgs; [
    adwaita-icon-theme
    git
    wget
    wl-clipboard
    zip
    rar
    unzip
    unrar
    grim
    slurp
    glib
    gsettings-desktop-schemas
    brightnessctl
    nh
  ];

}
