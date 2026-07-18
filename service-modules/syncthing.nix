{ config, lib, pkgs, ... }:
{
  services.syncthing = {
    enable = true;
    user = "keio";
    dataDir = "/home/keio";
    configDir = "/home/keio/.config/syncthing";
  };
}
