{ pkgs, inputs, ... }:

{
  # cachyos-kernel
  nixpkgs.overlays = [ inputs.nix-cachyos-kernel.overlays.pinned ];
  boot.kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-latest-lto-x86_64-v3;
  nix.settings.substituters = [ 
    "https://cache.nixos.org" 
    "https://cache.garnix.io" 
  ];
  nix.settings.trusted-public-keys = [ 
    "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
    "cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g=" 
  ];

  # kernel params
  boot.kernelParams = [
  "quiet"
  "splash"
  "nowatchdog"
  "nohz_full=auto"
  "mitigations=off"
  ]; 

  # kernel tweaks
  boot.kernel.sysctl = {
  "vm.swappiness" = 10;
  "vm.vfs_cache_pressure" = 50;
  "net.core.somaxconn" = 8192;
  };

  # Kernel Modules
  boot.kernelModules = [ "hp-wmi" ];

}
