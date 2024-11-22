local M = {}

--[[
-- 256 Colors cheat sheet
--]]
M.dark = {
    none       = { gui = 'NONE', cterm = 'NONE' },

    gray       = { gui = '#636d83', cterm = 'NONE' },
    blue       = { gui = '#81a1c1', cterm = 'NONE' },
    cyan       = { gui = '#88c0d0', cterm = 'NONE' },
    magenta    = { gui = '#b48ead', cterm = 'NONE' },
    green      = { gui = '#a3be8c', cterm = 'NONE' },
    yellow     = { gui = '#ebcb8b', cterm = 'NONE' },
    red        = { gui = '#bf616a', cterm = 'NONE' },

    bg_primary = { gui = '#2e3440', cterm = '235' },
    bg_alt     = { gui = '#191C24', cterm = '233' },
    bg_accent  = { gui = '#434c5e', cterm = '237' },

    fg10       = { gui = '#fcfcfc', cterm = '255' },
    fg20       = { gui = '#e8e8e8', cterm = '254' },
    fg30       = { gui = '#d4d4d4', cterm = '252' },
}

M.light = {
    none       = { gui = 'NONE', cterm = 'NONE' },

    gray       = { gui = '#a3acb9', cterm = 'NONE' },
    blue       = { gui = '#007acc', cterm = 'NONE' },
    cyan       = { gui = '#1aa893', cterm = 'NONE' },
    magenta    = { gui = '#d33682', cterm = 'NONE' },
    green      = { gui = '#6b8900', cterm = 'NONE' },
    yellow     = { gui = '#b58900', cterm = 'NONE' },
    red        = { gui = '#dc322f', cterm = 'NONE' },

    bg_primary = { gui = '#fcfcfc', cterm = '255' },
    bg_alt     = { gui = '#e8e8e8', cterm = '254' },
    bg_accent  = { gui = '#d4d4d4', cterm = '253' },

    fg10       = { gui = '#434c5e', cterm = '237' },
    fg20       = { gui = '#2e3440', cterm = '235' },
    fg30       = { gui = '#191C24', cterm = '233' },
}


M.termcolors = {
    black = { normal = M.dark.gray.gui, bright = M.light.gray.gui },
    red = { normal = M.dark.red.gui, bright = M.light.red.gui },
    green = { normal = M.dark.green.gui, bright = M.light.green.gui },
    yellow = { normal = M.dark.yellow.gui, bright = M.light.yellow.gui },
    blue = { normal = M.dark.blue.gui, bright = M.light.blue.gui },
    magenta = { normal = M.dark.magenta.gui, bright = M.light.magenta.gui },
    cyan = { normal = M.dark.cyan.gui, bright = M.light.cyan.gui },
    white = { normal = M.dark.fg10, bright = M.light.bg_accent.gui },
}

return M
