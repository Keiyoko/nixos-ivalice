{ pkgs, ... }:

let
  monochromeDesktopItem = pkgs.makeDesktopItem {
    name = "monochrome";
    desktopName = "Monochrome";
    comment = "Monochrome Audio Streaming Web Application";
    exec = "${pkgs.chromium}/bin/chromium --app=https://monochrome.tf/";
    icon = "multimedia-player";
    categories = [ "AudioVideo" "Audio" "Network" ];
  };
in
{
  environment.systemPackages = [
    pkgs.chromium
    monochromeDesktopItem
  ];
}
