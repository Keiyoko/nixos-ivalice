#!/usr/bin/env bash
set -e

REPO="https://github.com/Keiyoko/nixos-ivalice"

echo "==> Backing up hardware configuration to /tmp..."
sudo cp /etc/nixos/hardware-configuration.nix /tmp/hardware-configuration.nix

echo "==> Clearing /etc/nixos..."
sudo rm -rf /etc/nixos

echo "==> Cloning nixos-ivalice from repo..."
sudo git clone "$REPO" /etc/nixos

echo "==> Restoring hardware configuration from /tmp to /etc/nixos..."
sudo cp /tmp/hardware-configuration.nix /etc/nixos/hardware-configuration.nix
sudo git -C /etc/nixos add -f hardware-configuration.nix

echo "==> Rebuilding system..."
sudo nixos-rebuild switch --flake /etc/nixos#Ivalice

echo ""
echo "Done! Rebooting in:"
for i in 5 4 3 2 1; do
  echo "  $i..."
  sleep 1
done
sudo reboot
