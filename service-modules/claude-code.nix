{ config, pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    claude-code
  ];
}
