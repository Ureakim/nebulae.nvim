local M = {}

--[[
-- 256 Colors cheat sheet
--]]
M.colors = {
    none = { gui = 'NONE', cterm = 'NONE' },

    gray    = { gui = '#3b4252', cterm = '237' },
    blue    = { gui = '#81a1c1', cterm = '110' },
    cyan    = { gui = '#88c0d0', cterm = '73' },
    magenta = { gui = '#b48ead', cterm = '139' },
    green   = { gui = '#a3be8c', cterm = '108' },
    yellow   = { gui = '#d2b48c', cterm = '180' },
    red     = { gui = '#bf616a', cterm = '168' },

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

