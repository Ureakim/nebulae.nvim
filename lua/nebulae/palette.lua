local M = {}

--[[
-- 256 Colors cheat sheet
-- Based on the Everforest theme
--]]

M.dark = {
    none       = { gui = 'NONE', cterm = 'NONE' },

    gray       = { gui = '#7A8478', cterm = 'NONE' },
    blue       = { gui = '#7FBBB3', cterm = 'NONE' },
    cyan       = { gui = '#83C092', cterm = 'NONE' },
    magenta    = { gui = '#d699B6', cterm = 'NONE' },
    green      = { gui = '#A7C080', cterm = 'NONE' },
    yellow     = { gui = '#DBBC7F', cterm = 'NONE' },
    red        = { gui = '#E67E80', cterm = 'NONE' },

    bg_primary = { gui = '#333C43', cterm = '235' },
    bg_alt     = { gui = '#293136', cterm = '233' },
    bg_accent  = { gui = '#4D5960', cterm = '237' },

    fg10       = { gui = '#d3c6aa', cterm = '255' },
    fg20       = { gui = '#c8b89a', cterm = '254' },
    fg30       = { gui = '#bcab8a', cterm = '252' },
}

M.light = {
    none       = { gui = 'NONE', cterm = 'NONE' },

    gray       = { gui = '#A6B0A0', cterm = 'NONE' },
    blue       = { gui = '#3A94C5', cterm = 'NONE' },
    cyan       = { gui = '#35A77C', cterm = 'NONE' },
    magenta    = { gui = '#DF69BA', cterm = 'NONE' },
    green      = { gui = '#8DA101', cterm = 'NONE' },
    yellow     = { gui = '#DFA000', cterm = 'NONE' },
    red        = { gui = '#F85552', cterm = 'NONE' },

    fg10       = { gui = '#5c6A72', cterm = '233' },
    fg20       = { gui = '#6b7a82', cterm = '235' },
    fg30       = { gui = '#7c8b94', cterm = '237' },

    bg_primary = { gui = '#FDF6E3', cterm = '255' },
    bg_alt     = { gui = '#EFEBD4', cterm = '252' },
    bg_accent  = { gui = '#E6E2CC', cterm = '254' },
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
