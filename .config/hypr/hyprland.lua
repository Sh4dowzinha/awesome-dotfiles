local config_dir = os.getenv("HOME") .. "/.config/hypr/"
package.path = config_dir .. "?.lua;" .. config_dir .. "?/init.lua;" .. package.path

-- Módulos Base do Hyprland
require("hyprland.general")
require("hyprland.animations")
require("hyprland.input")
require("hyprland.gestures")
require("hyprland.rules")
require("hyprland.plugins")
require("hyprland.monitors_2")
require("startup")

require("variables")

-- Atalhos (vai importar o variables.lua internamente)
require("hyprland.keybinds")

-- Tema Noctalia
require("noctalia.noctalia-colors")

-- Ficheiros nwg-displays 
require("monitors")
require("workspaces")

-- For Noctalia Color templates
require("noctalia").apply_theme()
