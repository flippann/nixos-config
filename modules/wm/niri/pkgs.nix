{ pkgs, inputs, ... }:

{

  environment.systemPackages = with pkgs; [
  waybar
#  inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

}
