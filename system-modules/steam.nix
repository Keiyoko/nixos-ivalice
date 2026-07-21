{ config, pkgs, lib, ... }:
{
  options.modules.steam.enable = lib.mkEnableOption "steam";

  config = lib.mkIf config.modules.steam.enable {

    # Steam Configuration
    programs.steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      localNetworkGameTransfers.openFirewall = true;
      gamescopeSession.enable = true; 
    };

    # Graphics & Driver Optimizations 
    hardware.graphics = {
      enable = true;
      enable32Bit = true;
    };

    # The Baseline performance safety nets
    programs.gamemode.enable = true; 
    programs.gamescope.enable = true;

    # Kernel Optimizations
    boot.kernel.sysctl = {
      "vm.max_map_count" = 2147483642;
    };

    # Custom Proton
    environment.systemPackages = with pkgs; [
      protonup-qt
      scanmem
    ];
  };
}
