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
    window_background_opacity = 0.7,
    color_scheme = "Epiphany (terminal.sexy)",
    use_ime = false,
}
