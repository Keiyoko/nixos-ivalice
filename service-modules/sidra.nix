{ config, pkgs, inputs, lib, ... }:
{
  environment.systemPackages = [
    inputs.sidra.packages.${pkgs.system}.default
  ];
}
