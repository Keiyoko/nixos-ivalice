{ config, pkgs, lib, ... }:
{
  # Unlocks fan curve, power limit and voltage controls on AMD cards
  hardware.amdgpu.overdrive.enable = true;

  # LACT daemon and GUI
  services.lact.enable = true;
}
