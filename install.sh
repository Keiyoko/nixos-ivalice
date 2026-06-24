#!/usr/bin/env bash
set -e

REPO="https://github.com/Keiyoko/nixos-ivalice"

echo "==> Backing up hardware configuration to /tmp..."
sudo cp /etc/nixos/hardware-configuration.nix /tmp/hardware-configuration.nix

echo "==> Clearing /etc/nixos..."
sudo rm -rf /etc/nixos

echo "==> Cloning nixos-ivalice from repo..."
sudo git clone "$REPO" /etc/nixos

echo "==> Restoring hardware configuration from /tmp to /nixos..."
sudo cp /tmp/hardware-configuration.nix /etc/nixos/hardware-configuration.nix

echo "==> Rebuilding system..."
sudo nixos-rebuild switch --flake /etc/nixos

echo "==> Setting up DMS, make sure to select all relevant settings, this install uses niri with alacritty by default..."
dms setup

echo ""
echo "Done! Change your wallpaper in DMS to trigger matugen theming."
echo "Reboot when ready."
