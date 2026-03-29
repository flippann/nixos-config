{ config, pkgs, lib, ... }:
{
  home-manager.users.dhanvanth = {
    home.packages = with pkgs; [ xdg-desktop-portal-gtk ];
    home.sessionVariables = {
      GSETTINGS_SCHEMA_DIR = "${pkgs.gsettings-desktop-schemas}/share/gsettings-schemas/${pkgs.gsettings-desktop-schemas.name}/glib-2.0/schemas";
      QT_STYLE_OVERRIDE = lib.mkForce "Adwaita-dark";
    };
    dconf.settings = {
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
      };
    };
    gtk = {
      enable = true;
      gtk3.extraConfig = {
        gtk-application-prefer-dark-theme = true;
      };
    };
    qt = {
      enable = true;
      platformTheme.name = "adwaita";
      style = {
        name = "adwaita-dark";
        package = pkgs.adwaita-qt6;
      };
    };
    xdg.configFile."gtk-4.0/gtk.css".text = ''
    @define-color window_bg_color #000000;
    @define-color window_fg_color #ffffff;
    @define-color view_bg_color #000000;
    @define-color view_fg_color #ffffff;
    @define-color headerbar_bg_color #000000;
    @define-color headerbar_fg_color #ffffff;
    @define-color sidebar_bg_color #000000;
    @define-color card_bg_color #0a0a0a;
    @define-color popover_bg_color #0a0a0a;
    @define-color dialog_bg_color #000000;
  '';
  
  xdg.configFile."gtk-3.0/gtk.css".text = ''
    * {
      background-color: #000000;
      color: #ffffff;
          }
      '';
     };
}
