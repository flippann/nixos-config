{ pkgs, inputs, ... }:

{
  # enable hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  # portals
  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk pkgs.xdg-desktop-portal-hyprland ];
    configPackages = with pkgs; [ xdg-desktop-portal-gtk ];
    config.common = {
      default = [ "hyprland" "gtk" ];
      "org.freedesktop.impl.portal.Settings" = [ "gtk" ];
      "org.freedesktop.impl.portal.FileChooser" = [ "gtk" ];
    };
  };

  # environment variables for wayland
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };  
}
