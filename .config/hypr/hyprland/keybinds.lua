local vars = require("variables")

-- NOCTALIA Binds
hl.bind(vars.mainMod .. "+ SPACE", hl.dsp.exec_cmd(vars.ipc .. "panel-toggle launcher"))
hl.bind(vars.mainMod .. "+ N", hl.dsp.exec_cmd(vars.ipc .. "panel-toggle control-center "))
hl.bind(vars.mainMod .. "+ I", hl.dsp.exec_cmd(vars.ipc .. "settings-toggle"))
hl.bind("ALT+TAB", hl.dsp.exec_cmd(vars.ipc .. "window-switcher"))

-- Session
hl.bind("CTRL + ALT + Delete", hl.dsp.exec_cmd(vars.ipc .. " panel-toggle session"))
hl.bind(vars.mainMod .. " + L", hl.dsp.exec_cmd(vars.ipc .. " session lock"))

-- Media keys 
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(vars.ipc .. " volume-up"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(vars.ipc .. " volume-down"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(vars.ipc .. " volume-mute"), { locked = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(vars.ipc .. " brightness-up"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(vars.ipc .. " brightness-down"), { locked = true, repeating = true })
hl.bind(vars.mainMod .. "+ P", hl.dsp.exec_cmd(vars.ipc .. " media toggle"))
hl.bind(vars.mainMod .. "+ M", hl.dsp.exec_cmd(vars.ipc .. " panel-toggle control-center media"))

-- Apps & Utils
hl.bind(vars.mainMod .. "+ T", hl.dsp.exec_cmd("runapp -- " .. vars.terminal))
hl.bind(vars.mainMod .. "+ W", hl.dsp.exec_cmd("runapp -- " .. vars.browser))
hl.bind(vars.mainMod .. "+ E", hl.dsp.exec_cmd("runapp -- " .. vars.fileManager))
hl.bind(vars.mainMod .. "+ escape", hl.dsp.exec_cmd(vars.ipc .. " panel-toggle control-center system"))
hl.bind("CTRL + SHIFT + escape", hl.dsp.exec_cmd("kitty btop"))
hl.bind(vars.mainMod .. "+ V", hl.dsp.exec_cmd(vars.ipc .. " panel-toggle clipboard"))
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m output"))
hl.bind(vars.mainMod .. "+ PRINT", hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind(vars.mainMod .. "+ SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region"))

-- Hyprland Controls
hl.bind(vars.mainMod .. "+ Q", hl.dsp.window.close())
hl.bind(vars.mainMod .. "+ CTRL + R", hl.dsp.exec_cmd("hyprctl reload" .. vars.ipc .. " config-reload"))
hl.bind(vars.mainMod .. "+ left", hl.dsp.focus({ direction = "left" }))
hl.bind(vars.mainMod .. "+ right", hl.dsp.focus({ direction = "right" }))
hl.bind(vars.mainMod .. "+ up", hl.dsp.focus({ direction = "up" }))
hl.bind(vars.mainMod .. "+ down", hl.dsp.focus({ direction = "down" }))

-- Workspaces
for i = 1, 9 do
    hl.bind(vars.mainMod .. " + " .. tostring(i), hl.dsp.focus({ workspace = tostring(i) }))
    hl.bind(vars.mainMod .. "+ SHIFT + " .. tostring(i), hl.dsp.window.move({ workspace = tostring(i) }))
end
hl.bind(vars.mainMod .. "+ 0", hl.dsp.focus({ workspace = "10" }))
hl.bind(vars.mainMod .. "+ SHIFT + 0", hl.dsp.window.move({ workspace = "10" }))

-- Special Workspace
hl.bind(vars.mainMod .. "+ S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(vars.mainMod .. "+ SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Mouse and Layout
hl.bind(vars.mainMod .. "+ mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(vars.mainMod .. "+ mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind(vars.mainMod .. "+ plus", hl.dsp.exec_cmd("hyprctl dispatch layoutmsg splitratio +0.1"), { repeating = true })
hl.bind(vars.mainMod .. "+ minus", hl.dsp.exec_cmd("hyprctl dispatch layoutmsg splitratio -0.1"), { repeating = true })
hl.bind(vars.mainMod .. "+ ALT + SPACE", hl.dsp.window.float({ action = "toggle" }))
hl.bind(vars.mainMod .. "+ D", hl.dsp.window.fullscreen(1)) 
hl.bind(vars.mainMod .. "+ F", hl.dsp.window.fullscreen())
