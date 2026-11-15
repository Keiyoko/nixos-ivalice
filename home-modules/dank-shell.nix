{ config, pkgs, lib, ... }:
{
  options.modules.dms.enable = lib.mkEnableOption "dms";

  config = lib.mkIf config.modules.dms.enable {
    programs.dank-material-shell = {
      enable = true;

      systemd = {
        enable = true;
        restartIfChanged = true;
      };

      enableSystemMonitoring = true;
      enableDynamicTheming = true;

      settings = {
        interfaceStyle = "classic";
        dankLauncherV2BorderThickness = 2;
        batteryCriticalThreshold = 10;
        greeterRememberLastUser = true;
        dankLauncherV2IncludeFoldersInAll = false;
        greeterRememberLastSession = true;
        textRenderType = 0;
        matugenTemplateKcolorscheme = true;
        frameCloseGaps = true;
        matugenTemplateNeovimSettings = {
          dark = {
            baseTheme = "github_dark";
            harmony = 0.5;
          };
          light = {
            harmony = 0.5;
            baseTheme = "github_light";
          };
        };
        powerActionConfirm = true;
        desktopWidgetGroups = [];
        powerActionHoldDuration = 0.5;
        osdVolumeEnabled = true;
        notificationDedupeEnabled = true;
        notificationHistorySaveLow = true;
        notepadUseMonospace = true;
        wallpaperBackgroundCustomColor = "#000000";
        m3ElevationColorMode = "default";
        greeterWidgetInstances = [
          {
            enabled = true;
            widgetType = "desktopClock";
            config = {
              showDate = true;
              customColor = "#ffffff";
              style = "digital";
              twoTone = true;
              showDigitalSeconds = false;
              syncPositionAcrossScreens = true;
              showAnalogSeconds = true;
              displayPreferences = [
                "all"
              ];
              weight = 200;
              colorMode = "default";
              showAnalogNumbers = false;
              fontFamily = "Iosevka NFP";
              autoPosition = false;
              italic = false;
              transparency = 0;
            };
            id = "lock_clock";
          }
          {
            id = "lock_auth";
            config = {
              profileVisibility = "never";
              style = "pill";
              displayPreferences = [
                "all"
              ];
              syncPositionAcrossScreens = true;
              passwordVisibility = "always";
            };
            widgetType = "lockAuth";
            enabled = true;
          }
          {
            widgetType = "lockStatus";
            enabled = true;
            id = "lock_status";
            config = {
              showMediaPlayer = true;
              background = false;
              displayPreferences = [
                "all"
              ];
              showWeather = true;
              syncPositionAcrossScreens = true;
            };
          }
          {
            id = "lock_power";
            config = {
              shape = "round";
              displayPreferences = [
                "all"
              ];
              syncPositionAcrossScreens = true;
            };
            widgetType = "lockPower";
            enabled = true;
          }
          {
            widgetType = "greeterSession";
            enabled = true;
            id = "greeter_session";
            config = {
              syncPositionAcrossScreens = true;
              displayPreferences = [
                "all"
              ];
            };
          }
        ];
        monoFontFamily = "Iosevka Nerd Font Mono";
        screenPreferences = {};
        notificationPopupPosition = 0;
        customPowerActionLogout = "";
        soundLogin = false;
        updaterCheckOnStart = false;
        muxCustomCommand = "";
        frameLauncherEmergeSide = "bottom";
        configVersion = 42;
        blurBorderOpacity = 0.35;
        mangoLayoutGapsOutOverride = -1;
        greeterPamExternallyManaged = false;
        blurredWallpaperLayer = false;
        fontWeight = 500;
        batteryLowThreshold = 20;
        notepadDefaultMode = "slideout";
        matugenContrast = 0;
        enableU2f = false;
        frameLauncherEdgeHover = false;
        customPowerActionPowerOff = "";
        matugenTemplateWezterm = true;
        displayNameMode = "system";
        weatherEnabled = true;
        widgetBackgroundCustomStrength = 0.5;
        lockScreenInactiveColor = "#000000";
        hyprlandLayoutBorderSize = -1;
        spotlightSectionViewModes = {};
        notepadTransparencyOverride = -1;
        centeringMode = "index";
        calendarBackend = "auto";
        popupTransparency = 1;
        frameBarInsetPadding = -1;
        u2fMode = "or";
        muteSoundsWhenMediaPlaying = true;
        matugenTemplateQt6ct = true;
        batteryProfileName = "";
        notificationForegroundLayers = true;
        customPowerActionHibernate = "";
        notificationBodyFontSize = 0;
        frameMode = "connected";
        soundVolumeChanged = true;
        useSystemSoundTheme = false;
        launcherUseOverlayLayer = false;
        updaterCustomCommand = "";
        enableFprint = false;
        matugenTemplateMangowc = true;
        acProfileName = "";
        showWeekNumber = false;
        modalDarkenBackground = true;
        batterySuspendBehavior = 0;
        clipboardVisibleEntryActions = [
          "pin"
          "edit"
          "delete"
        ];
        powerMenuActions = [
          "reboot"
          "logout"
          "poweroff"
          "lock"
          "suspend"
          "restart"
        ];
        syncComponentAnimationSpeeds = false;
        m3ElevationOpacity = 30;
        batteryAutoPowerSaver = false;
        showOnLastDisplay = {};
        mediaExcludePlayers = [];
        frameLauncherArcExtender = false;
        useAutoLocation = false;
        osdPowerProfileEnabled = true;
        lockPamPath = "";
        blurBorderEnabled = true;
        notificationHistoryEnabled = true;
        hyprlandLayoutGapsOutOverride = -1;
        matugenTemplateVesktop = true;
        launcherPluginOrder = [];
        matugenTemplateGhostty = true;
        acMonitorTimeout = 0;
        wallpaperFillMode = "Fill";
        customPowerActionReboot = "";
        launcherEnterAction = "launch";
        dankLauncherV2ShowSourceBadges = true;
        terminalsAlwaysDark = false;
        loginctlLockIntegration = true;
        keybindsFloatingWindow = false;
        useFahrenheit = false;
        muxType = "tmux";
        widgetColorMode = "default";
        frameShowOnOverview = false;
        osdMicMuteEnabled = true;
        soundsEnabled = true;
        runUserMatugenTemplates = true;
        currentThemeName = "dynamic";
        notificationHistorySaveNormal = true;
        clockDateFormat = "";
        customPowerActionLock = "";
        batteryNotifyChargeLimit = false;
        notificationHistorySaveCritical = true;
        matugenTemplateZenBrowser = true;
        matugenTemplateQt5ct = true;
        niriLayoutBorderSize = -1;
        matugenTemplateDgop = true;
        wellbeingEnabled = false;
        motionEffect = 1;
        lockScreenShowProfileImage = true;
        lockPamExternallyManaged = false;
        notificationTimeoutCritical = 0;
        dankLauncherV2UnloadOnClose = false;
        batteryNotifyLow = false;
        notificationRules = [
          {
            urgency = "default";
            pattern = "zen";
            action = "default";
            matchType = "exact";
            enabled = true;
            field = "desktopEntry";
          }
        ];
        displaySnapToEdge = true;
        notepadSlideoutSide = "right";
        acPostLockMonitorTimeout = 0;
        clipboardRememberTypeFilter = false;
        matugenTemplateFirefox = true;
        lockScreenPowerOffMonitorsOnLock = false;
        updaterUseCustomCommand = false;
        acLockTimeout = 0;
        dankLauncherV2ShowFooter = false;
        m3ElevationCustomColor = "#000000";
        dashOptions = {
          media = {
            albumArtAccent = false;
          };
        };
        mangoLayoutGapsOverride = -1;
        niriLayoutGapsOverride = -1;
        notificationTimeoutLow = 5000;
        networkPreference = "auto";
        notificationHistoryMaxCount = 50;
        batteryMonitorTimeout = 0;
        hyprlandResizeOnBorder = false;
        appIdSubstitutions = [];
        audioWheelScrollAmount = 5;
        showSeconds = false;
        notificationPopupPrivacyMode = false;
        barElevationEnabled = false;
        firstDayOfWeek = -1;
        osdIdleInhibitorEnabled = true;
        dankLauncherV2Size = "compact";
        buttonColorMode = "primary";
        m3ElevationLightDirection = "top";
        soundPluggedIn = true;
        notificationFocusedMonitor = false;
        dockConfigs = [
          {
            launcherLogoSizeOffset = 0;
            magnificationScale = 130;
            maxVisibleRunningApps = 0;
            transparency = 1;
            useOverlayLayer = false;
            launcherLogoBrightness = 0.5;
            launcherLogoMode = "apps";
            magnificationExpand = false;
            iconSize = 40;
            editOnRightClick = false;
            showTrash = false;
            isolateDisplays = false;
            margin = 0;
            showOnLastDisplay = true;
            separatePinnedAndRunningApps = false;
            spacing = 4;
            middleClickAction = "close";
            enabled = false;
            showOverflowBadge = true;
            launcherLogoCustomPath = "";
            trashCustomCommand = "";
            screenPreferences = [
              "all"
            ];
            magnification = false;
            borderThickness = 1;
            taskbarAlign = "center";
            showOnFullscreen = false;
            widgets = [
              {
                id = "dock_launcher";
                enabled = true;
                widgetId = "dockLauncher";
              }
              {
                id = "dock_apps";
                widgetId = "appsDock";
                enabled = true;
              }
              {
                id = "dock_trash";
                enabled = true;
                widgetId = "dockTrash";
              }
            ];
            launcherLogoColorOverride = "";
            mode = "compact";
            order = [];
            maxVisibleApps = 0;
            trashFileManager = "default";
            borderColor = "surfaceText";
            autoHide = false;
            followInterfaceStyle = true;
            itemSpacing = 4;
            borderOpacity = 1;
            name = "Dock";
            id = "dock";
            magnificationProfile = "parabolic";
            indicatorStyle = "circle";
            launcherLogoContrast = 1;
            position = 1;
            groupByApp = false;
            bottomGap = 0;
            launcherEnabled = false;
            borderEnabled = false;
            restoreSpecialWorkspaceOnClick = false;
            widgetExpansion = "popout";
            openOnOverview = false;
            smartAutoHide = false;
          }
        ];
        lockScreenWidgetInstances = [
          {
            config = {
              weight = 200;
              colorMode = "default";
              showAnalogNumbers = false;
              fontFamily = "Iosevka NFP";
              autoPosition = false;
              transparency = 0;
              italic = false;
              showDate = true;
              customColor = "#ffffff";
              style = "digital";
              twoTone = true;
              showDigitalSeconds = false;
              showAnalogSeconds = true;
              syncPositionAcrossScreens = true;
              displayPreferences = [
                "all"
              ];
            };
            id = "lock_clock";
            enabled = true;
            widgetType = "desktopClock";
          }
          {
            enabled = true;
            widgetType = "lockAuth";
            config = {
              displayPreferences = [
                "all"
              ];
              style = "pill";
              profileVisibility = "never";
              passwordVisibility = "always";
              syncPositionAcrossScreens = true;
            };
            id = "lock_auth";
          }
          {
            enabled = false;
            widgetType = "lockNotifications";
            id = "lock_notifications";
            config = {
              displayPreferences = [
                "all"
              ];
              syncPositionAcrossScreens = true;
              mode = 2;
            };
          }
          {
            config = {
              syncPositionAcrossScreens = true;
              showWeather = true;
              displayPreferences = [
                "all"
              ];
              background = false;
              showMediaPlayer = true;
            };
            id = "lock_status";
            widgetType = "lockStatus";
            enabled = true;
          }
          {
            enabled = true;
            widgetType = "lockPower";
            config = {
              syncPositionAcrossScreens = true;
              shape = "round";
              displayPreferences = [
                "all"
              ];
            };
            id = "lock_power";
          }
        ];
        updaterAllowAUR = true;
        blurBorderCustomColor = "#ffffff";
        matugenTemplateFoot = true;
        dankLauncherV2BorderColor = "primary";
        systemTrayIconTintStrength = 135;
        notificationTimeoutNormal = 5000;
        spotlightBarShowModeChips = false;
        lockScreenVideoPath = "";
        frameBlurEnabled = true;
        matugenTemplateVscode = true;
        lockScreenWallpaperPath = "";
        maxFprintTries = 15;
        sortAppsAlphabetically = false;
        lockScreenVideoCycling = false;
        runDmsMatugenTemplates = true;
        notepadFontFamily = "";
        clipboardClickToPaste = false;
        osdAudioOutputEnabled = true;
        soundNewNotification = true;
        syncModeWithPortal = true;
        matugenTemplateEmacs = true;
        matugenTargetMonitor = "";
        blurForegroundLayers = true;
        modalElevationEnabled = true;
        controlCenterWidgets = [
          {
            enabled = true;
            w = 5;
            id = "user";
            h = 1;
          }
          {
            id = "settings";
            h = 1;
            enabled = true;
            w = 1;
            small = true;
          }
          {
            enabled = true;
            small = true;
            w = 1;
            id = "lock";
            h = 1;
          }
          {
            enabled = true;
            w = 1;
            small = true;
            id = "power";
            h = 1;
          }
          {
            h = 1;
            id = "volumeSlider";
            w = 4;
            enabled = true;
          }
          {
            id = "brightnessSlider";
            h = 1;
            enabled = true;
            w = 4;
          }
          {
            enabled = true;
            w = 4;
            id = "wifi";
            h = 1;
          }
          {
            id = "bluetooth";
            h = 1;
            enabled = true;
            w = 4;
          }
          {
            h = 1;
            id = "audioOutput";
            w = 4;
            enabled = true;
          }
          {
            h = 1;
            id = "audioInput";
            w = 4;
            enabled = true;
          }
          {
            h = 1;
            id = "nightMode";
            w = 4;
            enabled = true;
          }
          {
            h = 1;
            id = "darkMode";
            w = 4;
            enabled = true;
          }
          {
            h = 1;
            id = "edit";
            small = true;
            w = 1;
            enabled = true;
          }
          {
            w = 4;
            small = true;
            enabled = true;
            col = 0;
            h = 1;
            id = "runningApps";
            row = 6;
          }
        ];
        batteryChargeLimit = 100;
        updaterIncludeFlatpak = true;
        currentThemeCategory = "dynamic";
        frameThickness = 16;
        notificationOverlayEnabled = false;
        iconThemePerMode = false;
        modalAnimationDuration = 220;
        muxSessionFilter = "";
        dankLauncherV2IncludeFilesInAll = false;
        updaterIntervalSeconds = 1800;
        launcherStyle = "full";
        launcherPluginVisibility = {};
        osdMediaPlaybackEnabled = false;
        acSuspendBehavior = 0;
        barConfigs = [
          {
            showOnWindowsOpen = false;
            position = 0;
            iconScale = 1;
            widgetOutlineThickness = 1;
            id = "default";
            name = "Main Bar";
            borderOpacity = 1;
            hoverPopouts = false;
            openOnOverview = false;
            widgetOutlineEnabled = false;
            widgetPadding = 8;
            borderEnabled = false;
            bottomGap = 0;
            widgetOutlineOpacity = 1;
            widgetTransparency = 1;
            squareCorners = false;
            followInterfaceStyle = false;
            autoHide = false;
            scrollYBehavior = "workspace";
            maximizeWidgetText = false;
            shadowOpacity = 60;
            borderColor = "surfaceText";
            visible = true;
            fontScale = 1;
            gothCornerRadiusOverride = false;
            clickThrough = false;
            shadowCustomColor = "#000000";
            noBackground = false;
            centerWidgets = [
              {
                workspaceUnfocusedMonitorBorderEnabled = false;
                id = "workspaceSwitcher";
                workspaceFollowFocus = false;
                workspaceOccupiedColorMode = "none";
                dwlShowAllTags = false;
                workspaceFocusedBorderThickness = 2;
                workspaceUnfocusedMonitorBorderThickness = 2;
                enabled = true;
                workspaceFocusedCustomColor = "#6750A4";
                workspaceFocusedBorderCustomColor = "#6750A4";
                workspaceUnfocusedMonitorFocusedCustomColor = "#6750A4";
                showWorkspaceName = false;
                showOccupiedWorkspacesOnly = false;
                workspaceUnfocusedCustomColor = "#49454E";
                workspaceUnfocusedMonitorUnfocusedCustomColor = "#49454E";
                workspaceFocusedBorderEnabled = false;
                workspaceAppIconSizeOffset = 0;
                workspaceUnfocusedMonitorSeparateAppearance = false;
                workspaceUnfocusedMonitorBorderCustomColor = "#6750A4";
                workspaceUrgentCustomColor = "#B3261E";
                workspaceUnfocusedMonitorOccupiedCustomColor = "#625B71";
                workspaceColorMode = "default";
                workspaceActiveAppHighlightEnabled = false;
                workspaceUrgentColorMode = "default";
                showWorkspaceIndex = false;
                groupActiveWorkspaceApps = false;
                showWorkspaceApps = false;
                workspaceUnfocusedMonitorOccupiedColorMode = "none";
                workspaceOccupiedCustomColor = "#625B71";
                workspaceFocusedBorderColor = "primary";
                workspaceUnfocusedColorMode = "default";
                workspaceUnfocusedMonitorUrgentColorMode = "default";
                showWorkspacePadding = false;
                maxWorkspaceIcons = 3;
                workspaceUnfocusedMonitorColorMode = "default";
                workspaceUnfocusedMonitorBorderColor = "primary";
                groupWorkspaceApps = true;
                workspaceUnfocusedMonitorUrgentCustomColor = "#B3261E";
                workspaceDragReorder = true;
                reverseScrolling = false;
                workspaceUnfocusedMonitorUnfocusedColorMode = "default";
              }
            ];
            popupGapsManual = 4;
            innerPadding = 3;
            enabled = true;
            widgetOutlineColor = "primary";
            spacing = 4;
            autoHideDelay = 250;
            borderThickness = 1;
            shadowIntensity = 0;
            screenPreferences = [
              "all"
            ];
            gothCornerRadiusValue = 12;
            maximizeWidgetIcons = false;
            maximizeDetection = true;
            gothCornersEnabled = false;
            rightWidgets = [
              {
                enabled = true;
                trayPopupSingleLine = true;
                trayMaxVisibleItems = 0;
                trayAutoOverflow = true;
                id = "systemTray";
              }
              "clipboard"
              "notificationButton"
              {
                showDoNotDisturbIcon = false;
                showMicIcon = false;
                showBrightnessPercent = false;
                showVpnIcon = true;
                showBluetoothIcon = true;
                showBrightnessIcon = false;
                showBatteryIcon = false;
                showIdleInhibitorIcon = false;
                showMicPercent = true;
                enabled = true;
                showAudioIcon = true;
                id = "controlCenterButton";
                showAudioPercent = false;
                showPrinterIcon = false;
                showScreenSharingIcon = true;
                showNetworkIcon = true;
              }
              {
                id = "clock";
                clockCompactMode = false;
                enabled = true;
              }
              {
                id = "weather";
                enabled = true;
              }
            ];
            leftWidgets = [
              {
                launcherLogoContrast = 1;
                launcherLogoCustomPath = "";
                enabled = true;
                launcherLogoSizeOffset = 0;
                launcherLogoBrightness = 0.5;
                launcherLogoMode = "os";
                id = "launcherButton";
                launcherLogoColorOverride = "";
              }
              {
                id = "cpuUsage";
                minimumWidth = true;
                enabled = true;
              }
              {
                enabled = true;
                showInGb = false;
                minimumWidth = true;
                id = "memUsage";
              }
              {
                focusedWindowCompactMode = false;
                id = "focusedWindow";
                enabled = true;
                focusedWindowShowIcon = true;
                focusedWindowSize = 1;
              }
            ];
            transparency = 0.9;
            scrollEnabled = true;
            popupGapsAuto = true;
            shadowColorMode = "text";
            showOnLastDisplay = true;
            scrollXBehavior = "focusWindow";
            widgetFollowInterfaceStyle = true;
          }
          {
            widgetPadding = 8;
            borderEnabled = false;
            bottomGap = 0;
            openOnOverview = false;
            widgetOutlineEnabled = false;
            id = "dot1794765379052";
            dot = true;
            name = "Dot";
            borderOpacity = 1;
            hoverPopouts = false;
            showOnWindowsOpen = false;
            iconScale = 1;
            position = 0;
            widgetOutlineThickness = 1;
            fontScale = 1;
            gothCornerRadiusOverride = false;
            followInterfaceStyle = false;
            scrollYBehavior = "workspace";
            autoHide = false;
            maximizeWidgetText = false;
            shadowOpacity = 60;
            borderColor = "surfaceText";
            visible = true;
            squareCorners = false;
            widgetOutlineOpacity = 1;
            widgetTransparency = 1;
            gothCornerRadiusValue = 12;
            maximizeWidgetIcons = false;
            maximizeDetection = true;
            gothCornersEnabled = false;
            rightWidgets = [
              {
                id = "systemTray";
                trayAutoOverflow = true;
                trayMaxVisibleItems = 0;
                trayPopupSingleLine = true;
                enabled = true;
              }
              "clipboard"
              "notificationButton"
              {
                showBrightnessIcon = false;
                showBatteryIcon = false;
                showBluetoothIcon = true;
                showMicIcon = false;
                showDoNotDisturbIcon = false;
                showVpnIcon = true;
                showBrightnessPercent = false;
                showScreenSharingIcon = true;
                showNetworkIcon = true;
                showPrinterIcon = false;
                showIdleInhibitorIcon = false;
                showMicPercent = true;
                enabled = true;
                id = "controlCenterButton";
                showAudioPercent = false;
                showAudioIcon = true;
              }
              {
                enabled = true;
                clockCompactMode = false;
                id = "clock";
              }
              {
                id = "weather";
                enabled = true;
              }
            ];
            borderThickness = 1;
            screenPreferences = [
              "all"
            ];
            shadowIntensity = 0;
            centerWidgets = [
              {
                showWorkspaceIndex = false;
                workspaceUrgentColorMode = "default";
                workspaceUrgentCustomColor = "#B3261E";
                workspaceUnfocusedMonitorOccupiedCustomColor = "#625B71";
                workspaceActiveAppHighlightEnabled = false;
                workspaceColorMode = "default";
                workspaceUnfocusedMonitorSeparateAppearance = false;
                workspaceUnfocusedMonitorBorderCustomColor = "#6750A4";
                workspaceFocusedBorderEnabled = false;
                workspaceAppIconSizeOffset = 0;
                workspaceUnfocusedCustomColor = "#49454E";
                workspaceUnfocusedMonitorUnfocusedCustomColor = "#49454E";
                workspaceUnfocusedMonitorFocusedCustomColor = "#6750A4";
                showWorkspaceName = false;
                showOccupiedWorkspacesOnly = false;
                workspaceFocusedBorderCustomColor = "#6750A4";
                workspaceFocusedCustomColor = "#6750A4";
                enabled = true;
                dwlShowAllTags = false;
                workspaceUnfocusedMonitorBorderThickness = 2;
                workspaceFocusedBorderThickness = 2;
                id = "workspaceSwitcher";
                workspaceOccupiedColorMode = "none";
                workspaceFollowFocus = false;
                workspaceUnfocusedMonitorBorderEnabled = false;
                workspaceUnfocusedMonitorUnfocusedColorMode = "default";
                reverseScrolling = false;
                workspaceDragReorder = true;
                groupWorkspaceApps = true;
                workspaceUnfocusedMonitorUrgentCustomColor = "#B3261E";
                workspaceUnfocusedMonitorColorMode = "default";
                workspaceUnfocusedMonitorBorderColor = "primary";
                maxWorkspaceIcons = 3;
                workspaceUnfocusedMonitorUrgentColorMode = "default";
                showWorkspacePadding = false;
                workspaceFocusedBorderColor = "primary";
                workspaceUnfocusedColorMode = "default";
                workspaceOccupiedCustomColor = "#625B71";
                showWorkspaceApps = false;
                groupActiveWorkspaceApps = false;
                workspaceUnfocusedMonitorOccupiedColorMode = "none";
              }
            ];
            popupGapsManual = 4;
            innerPadding = 3;
            enabled = false;
            widgetOutlineColor = "primary";
            autoHideDelay = 250;
            spacing = 4;
            clickThrough = false;
            shadowCustomColor = "#000000";
            noBackground = false;
            widgetFollowInterfaceStyle = true;
            shadowColorMode = "text";
            showOnLastDisplay = true;
            scrollXBehavior = "focusWindow";
            transparency = 0.9;
            popupGapsAuto = true;
            scrollEnabled = true;
            leftWidgets = [
              {
                id = "launcherButton";
                launcherLogoMode = "os";
                launcherLogoColorOverride = "";
                launcherLogoCustomPath = "";
                enabled = true;
                launcherLogoSizeOffset = 0;
                launcherLogoBrightness = 0.5;
                launcherLogoContrast = 1;
              }
              {
                enabled = true;
                minimumWidth = true;
                id = "cpuUsage";
              }
              {
                enabled = true;
                showInGb = false;
                id = "memUsage";
                minimumWidth = true;
              }
              {
                id = "focusedWindow";
                focusedWindowCompactMode = false;
                enabled = true;
                focusedWindowShowIcon = true;
                focusedWindowSize = 1;
              }
            ];
            island = false;
          }
        ];
        displayProfileAutoSelect = false;
        customThemeFile = "";
        lockAtStartup = false;
        osdCapsLockEnabled = true;
        niriLayoutRadiusOverride = -1;
        dmsWindowsFloatingSeeded = [
          "niri"
        ];
        registryThemeVariants = {};
        appDrawerSectionViewModes = {};
        notificationHistoryMaxAgeDays = 7;
        batteryCriticalNotificationType = 1;
        systemTrayIconTintSaturation = 65;
        lockScreenVideoEnabled = false;
        padHours12Hour = false;
        blurEnabled = false;
        enableRippleEffects = true;
        iconThemeDark = "Papirus-Dark";
        batteryLockTimeout = 0;
        matugenTemplateAlacritty = true;
        mangoLayoutRadiusOverride = -1;
        fadeToDpmsGracePeriod = 5;
        matugenTemplateNeovimSetBackground = true;
        builtInPluginSettings = {
          dms_qr_generator = {
            trigger = "qrg";
          };
          dms_settings_search = {
            trigger = "?";
          };
          dms_clipboard_search = {
            trigger = "cb";
          };
          dms_power = {
            trigger = "pw";
          };
        };
        notificationCompactMode = false;
        lockPamInlineU2f = false;
        matugenTemplateZed = true;
        widgetBackgroundColor = "sch";
        blurWallpaperOnOverview = false;
        notificationPopupShadowEnabled = true;
        notepadEdgeGap = 0;
        controlCenterTileColorMode = "primary";
        frameBarSize = 40;
        customPowerActionSuspend = "";
        muxUseCustomCommand = false;
        popoutElevationEnabled = true;
        browserPickerViewMode = "grid";
        matugenTemplateVencord = true;
        dashTabs = [
          {
            id = "overview";
            enabled = true;
          }
          {
            id = "media";
            enabled = true;
          }
          {
            id = "wallpaper";
            enabled = true;
          }
          {
            enabled = true;
            id = "weather";
          }
          {
            enabled = true;
            id = "settings";
          }
        ];
        lockScreenWallpaperFillMode = "";
        notificationShowTimeoutBar = false;
        notepadUseCompositorGap = false;
        cursorSettings = {
          hyprland = {
            hideOnTouch = false;
            hideOnKeyPress = false;
            inactiveTimeout = 0;
          };
          size = 16;
          theme = "Quintom_Ink";
          dwl = {
            cursorHideTimeout = 0;
          };
          niri = {
            hideWhenTyping = false;
            hideAfterInactiveMs = 0;
          };
        };
        blurLayerOutlineOpacity = 0.12;
        hyprlandLayoutRadiusOverride = -1;
        lockU2fPamPath = "";
        fadeToLockEnabled = true;
        audioVisualizerEnabled = true;
        greeterEnableFprint = false;
        osdPosition = 5;
        fadeToDpmsEnabled = true;
        scrollTitleEnabled = true;
        greeterAutoLogin = false;
        barInsetPaddingShared = -1;
        niriOverviewLauncherStyle = "full";
        clipboardTypeFilter = "all";
        mangoLayoutBorderSize = -1;
        rememberLastMode = true;
        displayShowDisconnected = false;
        batteryChargeLimitNotificationType = 0;
        blurBorderColor = "outline";
        appPickerViewMode = "grid";
        appLauncherGridColumns = 4;
        greeterEnableU2f = false;
        notepadShowLineNumbers = false;
        updaterTerminalAdditionalParams = "";
        frameEnabled = false;
        matugenTemplateNiri = true;
        lockDateFormat = "";
        iconThemeLight = "System Default";
        windSpeedUnit = "kmh";
        popoutAnimationDuration = 220;
        notificationSummaryFontSize = 0;
        batteryPostLockMonitorTimeout = 0;
        acSuspendTimeout = 0;
        barInsetPaddingSyncAll = false;
        matugenTemplateGtk = true;
        fadeToLockGracePeriod = 5;
        m3ElevationEnabled = true;
        matugenTemplateEquibop = true;
        batteryNotifyCritical = true;
        clipboardEnterToPaste = false;
        lockScreenShowPowerActions = true;
        niriOverviewOverlayEnabled = true;
        fontFamily = "Iosevka Nerd Font Propo";
        matugenScheme = "scheme-content";
        matugenTemplateHyprland = true;
        lockPamInlineFprint = false;
        systemTrayIconTintMode = "primary";
        radiusStrength = 38;
        connectedFrameBarStyleBackups = {};
        matugenTemplatePywalfox = true;
        m3ElevationIntensity = 12;
        batterySuspendTimeout = 0;
        frameRounding = 23;
        notepadAutoSave = false;
        desktopWidgetInstances = [];
        matugenTemplateNeovim = false;
        powerMenuGridLayout = false;
        fontScale = 1.05;
        displayProfiles = {};
        frameScreenPreferences = [
          "all"
        ];
        clockFormat = "24h";
        launchPrefix = "";
        rememberLastQuery = false;
        textRenderQuality = 0;
        notepadLastCustomTransparency = 0.7;
        osdMediaVolumeEnabled = true;
        osdBrightnessEnabled = true;
        lockScreenFontFamily = "Iosevka NF";
        wallpaperBackgroundColorMode = "black";
        widgetBackgroundCustomColor = "#6750A4";
        hyprlandLayoutGapsOverride = -1;
        batteryLowNotificationType = 0;
        workspaceNameIcons = {};
        osdAlwaysShowValue = false;
        notepadFontSize = 14;
        updaterIgnoredPackages = [];
        matugenTemplateKitty = true;
        powerMenuDefaultAction = "logout";
        dankLauncherV2BorderEnabled = false;
        lockBeforeSuspend = false;
      }
;
    };
  };
}
