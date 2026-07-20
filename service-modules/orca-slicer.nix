{ config, pkgs, lib, ... }:

{
  environment.systemPackages = [
    pkgs.orca-slicer
  ];

  networking.firewall = {
    allowedUDPPorts = [ 1990 2021 ]; # Bambu discovery + LAN print protocol
  };
}
