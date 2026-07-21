{ config, pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    (symlinkJoin {
      name = "freecad-xwayland";
      paths = [ freecad ];
      buildInputs = [ makeWrapper ];
      postBuild = ''
        wrapProgram $out/bin/freecad --unset XDG_SESSION_TYPE
      '';
    })
  ];
}
