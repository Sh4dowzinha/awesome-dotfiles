hl.window_rule({ match = {class = "^()$", title = "^()$" },            no_blur = true})

hl.window_rule({ match = {class = ".*"},            no_blur = true})

hl.window_rule({ match = {title = "^(Open File)(.*)$"}, center = true})

hl.window_rule({ match = {title = "^(Select a File)(.*)$"}, center = true,   float = true})

hl.window_rule({match = {title = "^(Open Folder)(.*)$"}, center = true, float = true})

hl.window_rule({match = {title = "^(Save As)(.*)$"}, center = true, float = true})

hl.window_rule({match = {title = "^(Library)(.*)$"}, center = true, float = true})

hl.window_rule({match = {title = "^(File Upload)(.*)$"}, center = true, float = true})

hl.window_rule({match = {title = "^(.*)(wants to save)$"}, center = true, float = true})

hl.window_rule({match={title = "^(.*)(wants to open)$"}, center = true, float = true})

hl.window_rule({match={class = "^(blueberry\\.py)$"}, float = true})

hl.window_rule({match = {class = "^(pavucontrol)$"}, float = true, center = true, size = {"(monitor_w*.45)", "(monitor_h*.45)"} })

hl.window_rule({match = {class = "^(org.pulseaudio.pavucontrol)$"}, float = true, center = true, size = {"(monitor_w*.45)", "(monitor_h*.45)"} })
      
hl.window_rule({match = {class = "^(nm-connection-editor)$"}, float = true, center = true, size = {"(monitor_w*.45)", "(monitor_h*.45)"} })
 
hl.window_rule({match = {class = ".*plasmawindowed.*"}, float = true})
       
hl.window_rule({match = {class = "kcm_.*"}, float = true})

hl.window_rule({match = {class = "org.freedesktop.impl.portal.desktop.gtk"}, float = true, size = {"(monitor_w*.60)", "(monitor_h*.65)"} })
     
hl.window_rule({match = {class = "steam"}, float = true})
   
hl.window_rule({match = {title = "Steam"}, tile = true})

hl.window_rule({match = {title = "Unlock Database - KeePassXC"},   float = true})

hl.window_rule({match = {title = "Gajim"}, tile = true})

hl.window_rule({match = {title = "'btop'"}, maximize = true})

hl.window_rule({match = {title = "'Iniciar sessão – Contas Google - Brave'"}, float = true})

hl.window_rule({match = {class = "MuPDF"}, maximize = true})
    
hl.config({
    layerrule = {
        {
            name = "noctalia",
            ["match:namespace"] = "noctalia-background-.*$",
            ignore_alpha = 0.5,
            blur = true,
            blur_popups = true
        },
        {
            name = "screenshot-plugin",
            ["match:namespace"] = "noctalia-shell:regionSelector",
            no_anim = true
        }
    }
})

hl.workspace_rule({ workspace = "1", monitor = "eDP-1", persistent = true, default = true })
hl.workspace_rule({ workspace = "2", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "4", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "5", monitor = "eDP-1", persistent = true })

-- Noctalia Settings
hl.window_rule({
    match = { class = "dev.noctalia.Noctalia" },
    float = true,
    size = { 1080, 920 },
})
