#!/usr/bin/env bash
set -e

REPO="https://github.com/Keiyoko/nixos-ivalice"
TARGET="/etc/nixos/ivalice"

echo "==> Cloning nixos-ivalice..."
sudo git clone "$REPO" "$TARGET"

echo "==> Copying hardware configuration..."
sudo cp /etc/nixos/hardware-configuration.nix "$TARGET/"

echo "==> Rebuilding system..."
sudo nixos-rebuild switch --flake "$TARGET#Ivalice"

echo "==> Setting up DMS..."
dms setup

echo ""
echo "Done! Change your wallpaper in DMS to trigger matugen theming."
echo "Reboot when ready."
