{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [

    # Core Packages
    eza
    git
    kitty
    nautilus
    bitwarden-desktop
    xwayland-satellite
    pciutils

    # Animated Fetch
    fastfetch
    (stdenv.mkDerivation {
      pname = "areofyl-fetch";
      version = "unstable";
      src = inputs.areofyl-fetch;
      nativeBuildInputs = [ gcc ];
      buildPhase = ''
        sed -i 's/#define ANIM_WIDTH 60/#define ANIM_WIDTH 45/' fetch.c
        sed -i 's/#define GAP 2/#define GAP 1/' fetch.c
        sed -i '/\/\/ lspci gave us a human name\./a\  if (!strcmp(pci_id, "1002:7550")) strcpy(name, "Radeon RX 9070 XT");' fetch.c
        cc -O2 -o fetch fetch.c -lm \
          -DFETCH_VERSION="\"$(cat VERSION)\"" \
          -DFETCH_CODENAME="\"Overclocked ASCII\"" \
          -DFETCH_ARCH="\"$(uname -m)\"" \
          -DFETCH_OS="\"$(uname -s)\""
      '';
      installPhase = "install -Dm755 fetch $out/bin/fetch";
    })

    # Audio Packages
    qpwgraph
    pavucontrol

    # Icon Packages
    quintom-cursor-theme

    # Other Packages
    discord
    telegram-desktop
    spotify
  ];
}
