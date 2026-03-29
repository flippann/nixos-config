{ config, pkgs, inputs, ... }:

let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
in
{
  imports = [ inputs.spicetify-nix.nixosModules.default ];

  programs.spicetify = {
    enable = true;
    theme = spicePkgs.themes.text;

    enabledExtensions = with spicePkgs.extensions; [
      adblockify
      shuffle
    ];
  };
  nixpkgs.config.permittedInsecurePackages = [
  "electron-38.8.4"
  ];
}
