# nixos-ivalice

Personal NixOS flake config for Ivalice.

## Setup

```bash
sudo rm -rf /etc/nixos && sudo git clone https://github.com/Keiyoko/nixos-ivalice.git /etc/nixos
cd /etc/nixos && sudo nixos-rebuild switch --flake /etc/nixos#Ivalice
```

> Drive mounts in `system-modules/hardware.nix` use personal UUIDs — update or remove before rebuilding (`lsblk -f` or `blkid`).

## Structure

```
etc/nixos/
├── flake.nix
├── flake.lock
├── configuration.nix
│
├── certs/
│   └── caddy-local-ca.crt
│
├── system-modules/
│   ├── hardware-configuration.nix
│   ├── desktop.nix
│   ├── dms-greeter.nix
│   ├── steam.nix
│   ├── hardware.nix
│   ├── packages.nix
│   ├── networking.nix
│   └── core/
│       ├── boot.nix
│       ├── locale.nix
│       ├── users.nix
│       ├── nix-settings.nix
│       ├── aliases.nix
│       └── root-nvim.nix
│
├── service-modules/
│   ├── syncthing.nix
│   ├── orca-slicer.nix
│   └── freecad.nix
│
└── home-modules/
    ├── home.nix
    ├── niri.nix
    ├── terminal.nix
    ├── neovim.nix
    ├── media.nix
    ├── zen-browser.nix
    └── dank-shell.nix
```
