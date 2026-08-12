-- Configuração de comportamento do swipe
hl.config({
    gestures = {
        workspace_swipe_distance = 700,
        workspace_swipe_cancel_ratio = 0.2,
        workspace_swipe_min_speed_to_force = 5,
        workspace_swipe_direction_lock = true,
        workspace_swipe_direction_lock_threshold = 10,
        workspace_swipe_create_new = true
    }
})

-- Atalhos de gestos (binds) na nova sintaxe Lua
hl.gesture({ fingers = 3, direction = "swipe", action = "move" })
hl.gesture({ fingers = 3, direction = "pinch", action = "float" })
hl.gesture({ fingers = 4, direction = "horizontal", action = "workspace" })
