{ config, pkgs, lib, username, inputs, ... }:
{
  imports = [
    inputs.zen-browser.homeModules.beta
    inputs.dms.homeModules.dank-material-shell
    ./niri.nix
    ./terminal.nix
    ./neovim.nix
    ./media.nix
    ./zen-browser.nix
    ./dank-shell.nix
  ];

  # Modules
  modules.niri.enable = true;
  modules.terminal.enable = true;
  modules.neovim.enable = true;
  modules.media.enable = true;
  modules.zen-browser.enable = true;
  modules.dms.enable = true;

  # Environment Variables
  home.username = username;
  home.homeDirectory = "/home/${username}";
  home.stateVersion = "26.05";
  home.sessionPath = [ "$HOME/.local/bin" ];

  programs.home-manager.enable = true;
}
