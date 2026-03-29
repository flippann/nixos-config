{ config, inputs, ... }:

{

  services.libinput = {
  enable = true;
  mouse = {
    accelProfile = "flat";
    accelSpeed = "0";
  };
  touchpad = {
    accelProfile = "flat";
    };
  };

services.udev.extraRules = ''
  ATTRS{name}=="2.4G Receiver Mouse", ENV{LIBINPUT_CONFIG_ACCEL_PROFILE}="flat"
  '';

}
