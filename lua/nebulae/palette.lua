local M = {}

--[[
-- 256 Colors cheat sheet
--]]
M.dark = {
    none       = { gui = 'NONE', cterm = 'NONE' },

    gray       = { gui = '#757575', cterm = '237' },
    blue       = { gui = '#81a1c1', cterm = '110' },
    cyan       = { gui = '#88c0d0', cterm = '73' },
    magenta    = { gui = '#b48ead', cterm = '139' },
    green      = { gui = '#a3be8c', cterm = '108' },
    yellow     = { gui = '#d2b48c', cterm = '180' },
    red        = { gui = '#bf616a', cterm = '168' },

    bg_primary = { gui = '#2e3440', cterm = '235' },
    bg_alt     = { gui = '#191C24', cterm = '233' },
    bg_accent  = { gui = '#434c5e', cterm = '237' },

    fg10       = { gui = '#eff1f5', cterm = '255' },
    fg20       = { gui = '#dcdfe4', cterm = '254' },
    fg30       = { gui = '#ccd0dA', cterm = '252' },
}

M.light = {
    none       = { gui = 'NONE', cterm = 'NONE' },

    gray       = { gui = '#acacac', cterm = '253' },
    blue       = { gui = '#3b699f', cterm = '68' },
    cyan       = { gui = '#3f8e9d', cterm = '73' },
    magenta    = { gui = '#8c5475', cterm = '132' },
    green      = { gui = '#5d8a48', cterm = '65' },
    yellow     = { gui = '#b88749', cterm = '136' },
    red        = { gui = '#a84147', cterm = '124' },

    bg_primary = { gui = '#eff1f5', cterm = '255' },
    bg_alt     = { gui = '#ccd0dA', cterm = '254' },
    bg_accent  = { gui = '#dcdfe4', cterm = '253' },

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
