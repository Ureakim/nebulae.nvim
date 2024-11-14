local M = {}

--[[
-- 256 Colors cheat sheet
--]]
M.dark = {
    none    = { gui = 'NONE', cterm = 'NONE' },

    gray    = { gui = '#616161', cterm = '237' },
    blue    = { gui = '#81a1c1', cterm = '110' },
    cyan    = { gui = '#88c0d0', cterm = '73' },
    magenta = { gui = '#b48ead', cterm = '139' },
    green   = { gui = '#a3be8c', cterm = '108' },
    yellow  = { gui = '#d2b48c', cterm = '180' },
    red     = { gui = '#bf616a', cterm = '168' },

    bg10    = { gui = '#191C24', cterm = '233' },
    bg20    = { gui = '#2e3440', cterm = '235' },
    bg30    = { gui = '#3b4252', cterm = '237' },

    fg10    = { gui = '#eceff4', cterm = '255' },
    fg20    = { gui = '#e5e9f0', cterm = '254' },
    fg30    = { gui = '#d8dee9', cterm = '252' },
}

M.light = {
    none    = { gui = 'NONE', cterm = 'NONE' },

    gray    = { gui = '#acacac', cterm = '252' },
    blue    = { gui = '#5b728e', cterm = '67' },
    cyan    = { gui = '#6097a4', cterm = '72' },
    magenta = { gui = '#8b6e85', cterm = '132' },
    green   = { gui = '#7e956a', cterm = '65' },
    yellow  = { gui = '#a58a6c', cterm = '101' },
    red     = { gui = '#9e4b52', cterm = '131' },

    bg10    = { gui = '#eeeeee', cterm = '255' },
    bg20    = { gui = '#e0e0e0', cterm = '254' },
    bg30    = { gui = '#d3d3d3', cterm = '253' },

    fg10    = { gui = '#191C24', cterm = '233' },
    fg20    = { gui = '#2e3440', cterm = '235' },
    fg30    = { gui = '#3b4252', cterm = '237' },
}

M.colors = M.light

M.termcolors = {
    black = { normal = M.colors.gray.gui, bright = '#4c566a' },
    red = { normal = M.colors.red.gui, bright = '#d06f79' },
    green = { normal = M.colors.green.gui, bright = '#b3cf9d' },
    yellow = { normal = M.colors.yellow.gui, bright = '#e0c4a8' },
    blue = { normal = M.colors.blue.gui, bright = '#8fadc8' },
    magenta = { normal = M.colors.magenta.gui, bright = '#c895b5' },
    cyan = { normal = M.colors.cyan.gui, bright = '#9fceda' },
    white = { normal = '#e5e9f0', bright = '#edeff4' },
}

return M
