local M = {}

--[[
-- 256 Colors cheat sheet
-- https://jonasjacek.github.io/colors/
--]]
M.colors = {
    none    = { gui = 'NONE', cterm = 'NONE' },
    gray    = { gui = '#b2b2b2', cterm = '249' },
    blue    = { gui = '#81a1c1', cterm = '111' },
    brown   = { gui = '#BC8F8F', cterm = '136' },
    beige   = { gui = '#D2B48C', cterm = '180' },
    green   = { gui = '#8FBC8F', cterm = '113' },
    orange  = { gui = '#d08770', cterm = '172' },
    red     = { gui = '#bf616a', cterm = '196' },

    black10 = { gui = '#191C24', cterm = '233' },
    black20 = { gui = '#2e3440', cterm = '235' },
    black30 = { gui = '#3b4252', cterm = '237' },
    black40 = { gui = '#434c5e', cterm = '238' },
    black50 = { gui = '#4c566a', cterm = '239' },
    black60 = { gui = '#667084', cterm = '241' },

    white10 = { gui = '#d8dee9', cterm = '252' },
    white20 = { gui = '#e5e9f0', cterm = '254' },
    white30 = { gui = '#eceff4', cterm = '255' },
}

M.termcolors = {
    black = { normal = M.colors.black10.gui, bright = M.colors.black30.gui },
    red = { normal = M.colors.red.gui, bright = '#d08770' },
    green = { normal = M.colors.green.gui, bright = '#62bc62' },
    yellow = { normal = '#fff59d', bright = '#fceb55' },
    blue = { normal = M.colors.blue.gui, bright = '#4888c9' },
    magenta = { normal = '#e1bee7', bright = '#da81ea' },
    cyan = { normal = '#80deea', bright = '#35d3e8' },
    white = { normal = M.colors.white30.gui, bright = M.colors.white10.gui },
}

return M
