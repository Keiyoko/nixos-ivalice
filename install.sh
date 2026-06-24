#!/usr/bin/env bash
set -e

REPO="https://github.com/Keiyoko/nixos-ivalice"

echo "==> Backing up hardware configuration..."
sudo cp /etc/nixos/hardware-configuration.nix /tmp/hardware-configuration.nix

echo "==> Clearing /etc/nixos..."
sudo rm -rf /etc/nixos

echo "==> Cloning nixos-ivalice..."
nix-shell -p git --run "git clone $REPO /etc/nixos"

echo "==> Restoring hardware configuration..."
sudo cp /tmp/hardware-configuration.nix /etc/nixos/hardware-configuration.nix

echo "==> Rebuilding system..."
sudo nixos-rebuild switch --flake /etc/nixos#Ivalice

echo "==> Cleaning up..."
sudo rm -- "$0"
sudo rm -f -- "$(dirname "$0")/README.md"

echo ""
echo "Done! Remember to update drive UUIDs in configuration.nix after booting."
echo "After boot, 'dms setup' should run automatically."
echo ""
read -p "Reboot now? [y/N] " confirm
if [[ "$confirm" == [yY] ]]; then
  echo "Rebooting in:"
  for i in 5 4 3 2 1; do
    echo "  $i..."
    sleep 1
  done
  sudo reboot
fi
