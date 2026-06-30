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
end

-- switch to workspace keypad
hl.bind(mainMod .. " + code:87", hl.dsp.focus({ workspace = 1}))
hl.bind(mainMod .. " + code:88", hl.dsp.focus({ workspace = 2}))
hl.bind(mainMod .. " + code:89", hl.dsp.focus({ workspace = 3}))
hl.bind(mainMod .. " + code:83", hl.dsp.focus({ workspace = 4}))
hl.bind(mainMod .. " + code:84", hl.dsp.focus({ workspace = 5}))
hl.bind(mainMod .. " + code:85", hl.dsp.focus({ workspace = 6}))
hl.bind(mainMod .. " + code:79", hl.dsp.focus({ workspace = 7}))
hl.bind(mainMod .. " + code:80", hl.dsp.focus({ workspace = 8}))
hl.bind(mainMod .. " + code:81", hl.dsp.focus({ workspace = 9}))

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
