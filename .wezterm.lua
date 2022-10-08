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
    keys = mykeys,
    window_background_opacity = 0.6,
    color_scheme = "Aco (Gogh)",
    use_ime = false,
}
