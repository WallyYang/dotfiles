local wezterm = require 'wezterm'
local act = wezterm.action

local mykeys = {}

-- Bind tab selection to ALT + <number>
for i = 1, 8 do
    table.insert(mykeys, {
        key = tostring(i),
        mods = 'ALT',
        action = act.ActivateTab(i - 1),
    })
end

return {
    hyperlink_rules = {
        -- xxx://xxx
        {
            regex = '\\b\\w+://[\\w.-]+\\S*\\b',
            format = '$0',
        },
    },
    font = wezterm.font 'Hack',
    keys = mykeys,
    window_background_opacity = 0.7,
    color_scheme = "Nocturnal Winter",
    use_ime = false,
    initial_cols = 130,
    initial_rows = 45,
}
