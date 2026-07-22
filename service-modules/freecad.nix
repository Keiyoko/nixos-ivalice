{ config, pkgs, lib, ... }:

let
  pname = "freecad";
  version = "1.1.0";

  src = pkgs.fetchurl {
    url = "https://github.com/FreeCAD/FreeCAD/releases/download/1.1.0/FreeCAD_1.1.0-Linux-x86_64-py311.AppImage";
    sha256 = "sha256-74XxcfLQnuyT81i8ScFzDTP3K/vTU+ZGVgmzDkWs8vA=";
  };

  appimageContents = pkgs.appimageTools.extractType2 { inherit pname version src; };

  freecad-unwrapped = pkgs.appimageTools.wrapType2 {
    inherit pname version src;
    extraPkgs = pkgs: with pkgs; [ ];
  };

  freecad-appimage = pkgs.symlinkJoin {
    name = "freecad";
    paths = [ freecad-unwrapped ];
    postBuild = ''
      desktopFile=$(find ${appimageContents} -maxdepth 1 -name "*.desktop" | head -n1)
      install -m 444 -D "$desktopFile" $out/share/applications/freecad.desktop
      substituteInPlace $out/share/applications/freecad.desktop \
        --replace "Exec=AppRun" "Exec=$out/bin/freecad"

      iconFile=$(find ${appimageContents} -maxdepth 1 \( -name "*.png" -o -name "*.svg" \) | head -n1)
      if [ -n "$iconFile" ]; then
        install -m 444 -D "$iconFile" $out/share/icons/hicolor/256x256/apps/freecad.png
      fi
    '';
  };
in
{
  environment.systemPackages = [ freecad-appimage ];
}
