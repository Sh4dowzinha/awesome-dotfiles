local colors = {
    primary = "rgb(ffb77c)",
    surface = "rgb(17120f)",
    secondary = "rgb(e3c0a6)",
    error = "rgb(ffb4ab)",
    tertiary = "rgb(c4cb97)",
    surface_lowest = "rgb(120d0a)"
}

hl.config({
    general = {
        ["col.active_border"] = colors.primary,
        ["col.inactive_border"] = colors.surface
    },
    group = {
        ["col.border_active"] = colors.secondary,
        ["col.border_inactive"] = colors.surface,
        ["col.border_locked_active"] = colors.error,
        ["col.border_locked_inactive"] = colors.surface,
        groupbar = {
            ["col.active"] = colors.secondary,
            ["col.inactive"] = colors.surface,
            ["col.locked_active"] = colors.error,
            ["col.locked_inactive"] = colors.surface
        }
    }
})
