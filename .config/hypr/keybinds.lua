---KEYBINDS---#
local mainMod = "SUPER"
local terminal = "kitty"
local fileManager = "thunar"
local menu = "wofi -c /home/$USER/.config/wofi/config -I"

--Application binds--#

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(SCRIPTS .. "/screenshot.sh"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd(SCRIPTS .. "/swaylock.sh"))
hl.bind(mainMod .. " + K", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/setKeyboardLayout.sh"))

--Layout--#

for i = 1, 10 do
  local key = i % 10
  hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i})) -- switch to workspace
  hl.bind(mainMod .. " + SHIFT +" .. key, hl.dsp.window.move({ workspace = i})) -- move window to workspace
  hl.bind(mainMod .. " + KP_" .. key, hl.dsp.focus({ workspace = i})) -- switch to workspace with numpad
end

--Move/resize window
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true})
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true})

--Layout
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/setTilingLayout.sh"))
hl.bind(mainMod .. " + TAB", hl.dsp.layout("rollnext"))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/changeTilingRatio.sh"))

--Multimedia--#
hl.bind("XF86AudioNext", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/media.sh next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/media.sh prev"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/media.sh pp"))
