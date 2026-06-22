--------------------------------
---CAFFINATEDRACCOON HYPRLAND---
--------------------------------


--Monitors--
--Home AOC
hl.monitor({
    output = "DP-1",
    mode = "3440x1440@100",
    position = "2560x0",
    scale = 1
})
--Home LG Ultragear
hl.monitor({
    output = "DP-2",
    mode = "2560x1440@144",
    position = "0x100",
    scale = 1
})
--Laptop
hl.monitor({
    output = "eDP-1",
    mode = "1920x1080@60",
    position = "640x1540",
    scale = 1
})
--Monitor Plug&Play
hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = 1
})


--Workspace Rules--#
hl.workspace_rule({
    workspace = "2",
    layout_opts = { orientation = "right" }
})

--Window Rules--#
hl.window_rule({
    name = "set-bitwarden-float",
    match = {
        title = "Extension: (Bitwarden Password Manager) - Bitwarden"
    },
    float = true
})

--Folder paths--#
CFG = "/home/$USER/.config/hypr"
HYPR_SCRIPTS = "/home/$USER/.config/hypr/scripts"
SCRIPTS = "/home/$USER/.config/scripts"

--File sources--#
require("keybinds")

--Execute at launch--#
hl.on("hyprland.start", function ()
    hl.exec_cmd("waybar")
    hl.exec_cmd("nwg-look -a")
    hl.exec_cmd("easyeffects --gapplication-service")
    hl.exec_cmd(HYPR_SCRIPTS .. "/setwallpaper.sh -n")
end)
--Execute at Reload
hl.on("config.reloaded", function ()
    hl.exec_cmd(HYPR_SCRIPTS .. "/setwallpaper.sh -n")
end)

--env vars--
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("WLR_NO_HARDWARE_CURSORS", 1)
hl.env("XCURSOR_SIZE", 24)
hl.env("LAYOUT", "dwindle")
--change to qt6ct if you have that
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")

--gestures--
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

--Main Config--
hl.config({
    general = {
        gaps_in = 3,
        gaps_out = 7.5,
        border_size = 1,

        col = {
            active_border = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45},
            inactive_border = "rgba(595959aa)",
        },

        layout = "dwindle",

        allow_tearing = false
    },

    decoration = {
        rounding = 5,
        blur = {
            enabled = true,
            size = 3,
            passes = 1
        },
        shadow = {
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)"
        }
    },

    animations = {
        enabled = true,
    },

    input = {
        kb_layout = "de",
        numlock_by_default = true,

        follow_mouse = 1,
        sensitivity = 0,

        touchpad = {
            natural_scroll = true
        }
    },

    dwindle = {
        preserve_split = true
    },

    master = {
        mfact = 0.6,
        new_on_top = true
    }
})

--gmmk keyboard adaptions
hl.device({
    name = "usb-hid-gmmk-2-full-size-96%",
    kb_layout = "us,de"
})

hl.device ({
    name = "syna2ba6:00-06cb:ce2d-touchpad",
    sensitivity = 0.3
})

--animations
hl.curve( "myBezier", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.05} } } )

hl.animation({ leaf = "windows", enabled = true, speed = 7, bezier = "myBezier"})
hl.animation({ leaf = "windowsOut", enabled = true, speed = 7, bezier = "default", style = "popin 80%"})
hl.animation({ leaf = "border", enabled = true, speed = 10, bezier = "default"})
hl.animation({ leaf = "borderangle", enabled = true, speed = 8, bezier = "default"})
hl.animation({ leaf = "fade", enabled = true, speed = 7, bezier = "default"})
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.5, bezier = "default"})

