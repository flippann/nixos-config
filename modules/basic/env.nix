{ config, pkgs, inputs, ... }:

{
 # Environment Variables
  environment.sessionVariables = {
  XCURSOR_THEME = "Adwaita";
  XCURSOR_SIZE = "24";
  WLR_NO_HARDWARE_CURSORS = "1";
  GTK_USE_PORTAL = "1";
  XDG_CURRENT_DESKTOP = "Hyprland";
  XDG_SESSION_TYPE = "wayland";
  XDG_SESSION_DESKTOP = "Hyprland";
  };

}
