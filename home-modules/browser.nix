{ config, pkgs, lib, ... }:

let
  cfg = config.modules.browser.zen;
in
{
  options.modules.browser.zen = {
    enable = lib.mkEnableOption "Custom Zen Browser configuration with DMS integration";
  };

  config = lib.mkIf cfg.enable {
    fonts.fontconfig.enable = true;

    programs.zen-browser = {
      enable = true;
      setAsDefaultBrowser = true;

      profiles.default = {
        id = 0;
        name = "default";
        isDefault = true;

        search = {
          default = "google";
          force = true;
        };

        settings = {
          # Required for userChrome.css to load your DMS theme
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          
          # Clean Font Configuration
          "font.name.serif.x-western" = "Iosevka Nerd Font";
          "font.name.sans-serif.x-western" = "Iosevka Nerd Font";
          "font.name.monospace.x-western" = "Iosevka Nerd Font";
          "browser.display.use_document_fonts" = 1;
        };
      };

      policies = {
        ExtensionSettings = {
          "uBlock0@raymondhill.net" = { installation_mode = "force_installed"; install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi"; };
          "{446900e4-71c2-419f-a6a7-df9c091e268b}" = { installation_mode = "force_installed"; install_url = "https://addons.mozilla.org/firefox/downloads/latest/bitwarden-password-manager/latest.xpi"; };
          "sponsorBlocker@ajay.app" = { installation_mode = "force_installed"; install_url = "https://addons.mozilla.org/firefox/downloads/latest/sponsorblock/latest.xpi"; };
        };
      };
    };

    # UI Configuration
    home.file.".zen/7o3g1h0b.Default Profile/chrome/userChrome.css" = {
      text = ''
        /* Load your DMS theme */
        @import url("file://${config.home.homeDirectory}/.config/DankMaterialShell/zen.css");

        /* Apply Iosevka and 15px size to the UI */
        :root {
          --zen-font: "Iosevka Nerd Font" !important;
        }

        #sidebar-box, 
        #urlbar-input,
        #sidebar-header,
        .sidebar-panel,
        .browserSidebarContainer {
          font-family: var(--zen-font) !important;
          font-size: 15px !important;
        }
      '';
    };

    # Force Iosevka on websites
    home.file.".zen/7o3g1h0b.Default Profile/chrome/userContent.css" = {
      text = ''
        body, html, p, span, div, h1, h2, h3, h4, h5, h6, a, li, td {
          font-family: "Iosevka Nerd Font" !important;
        }
      '';    
      }; 
    };
}
