{ config, pkgs, lib, ... }:
{
  options.modules.hardware.enable = lib.mkEnableOption "hardware";

  config = lib.mkIf config.modules.hardware.enable {

    # Drive Mounts
    fileSystems."/mnt/Marche" = {
      device = "/dev/disk/by-uuid/1720a584-66b6-4fa3-beca-1c977ba37f1f";
      fsType = "ext4";
      options = [ "defaults" "nofail" "x-gvfs-show" ];
    };

    fileSystems."/mnt/Ritz" = {
      device = "/dev/disk/by-uuid/40170e14-94ff-44f5-a5c7-5fda8af305c5";
      fsType = "ext4";
      options = [ "defaults" "nofail" "x-gvfs-show" ];
    };

    # Logitech Steering Wheel (G25/G27/G29/G920/G923)
    boot.extraModulePackages = with config.boot.kernelPackages; [ new-lg4ff ];
    boot.kernelModules = [ "hid-logitech-new" ];

    # Udev Rules & System Packages
    services.udev.packages = with pkgs; [ oversteer ];
    
    environment.systemPackages = with pkgs; [ 
      oversteer
    ];
  };
}
