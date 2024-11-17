local M = {}
local palette = require('nebulae.palette')
local c = palette.dark
local t = palette.termcolors

local function hi(group, format)
    if not format.bg then
        format.bg = c.none
    end

    if not format.fg then
        format.fg = c.none
    end

    local guibg   = format.bg.gui
    local ctermbg = format.bg.cterm
    local guifg   = format.fg.gui
    local ctermfg = format.fg.cterm
    local style   = format.style or 'NONE'

    local s       = "hi " .. group
        .. ' guibg=' .. guibg
        .. ' guifg=' .. guifg
        .. ' gui=' .. style
        .. ' ctermbg=' .. ctermbg
        .. ' ctermfg=' .. ctermfg
        .. ' cterm=' .. style

    vim.cmd(s)
end

local function setHighlights()
    -- UI
    hi('Normal', { bg = c.bg_primary, fg = c.fg10 })
    hi('NormalFloat', { bg = c.bg_alt, fg = c.fg10 })
    hi('Visual', { bg = c.bg_accent, style = 'italic' })
    hi('Cursor', { bg = c.fg10, fg = c.bg_primary })
    hi('CursorLine', { bg = c.bg_alt })
    hi('CursorColumn', { bg = c.bg_alt })
    hi('CursorLineNr', { bg = c.bg_alt, fg = c.fg10 })
    hi('MatchParen', { bg = c.fg10, fg = c.bg_primary, style = 'reverse' })
    hi('ColorColumn', { bg = c.bg_accent, fg = c.fg10 })
    hi('LineNr', { bg = c.bg_primary, fg = c.gray })
    hi('SignColumn', { bg = c.bg_primary, fg = c.fg10 })
    hi('VertSplit', { bg = c.bg_alt, fg = c.fg10 })
    hi('StatusLine', { bg = c.bg_alt, fg = c.fg10 })
    hi('Pmenu', { bg = c.bg_alt, fg = c.fg10 })
    hi('PmenuSel', { bg = c.bg_accent, fg = c.fg10 })
    hi('IncSearch', { bg = c.fg10, fg = c.bg_primary })
    hi('Search', { bg = c.bg_primary, fg = c.fg10 })
    hi('Folded', { bg = c.bg_primary, fg = c.fg10 })
    hi('Title', { fg = c.magenta, style = 'bold' })
    hi('Todo', { style = 'inverse,bold' })
    hi('Directory', { fg = c.blue, style = 'underline' })
    hi('SpecialKey', { bg = c.bg_primary, fg = c.bg_alt })
    hi('ErrorMsg', { bg = c.bg_primary, fg = c.red, style = 'bold' })
    hi('WarningMsg', { fg = c.yellow })
    hi('Underlined', { style = 'underline' })
    hi('SpellCap', { fg = c.green, style = 'undercurl' })
    hi('SpellBad', { fg = c.yellow, style = 'undercurl' })
    hi('Error', { fg = c.red, style = 'underline' })

    -- Strings
    hi('Delimiter', { fg = c.fg10 })
    hi('String', { fg = c.fg10 })
    hi('Character', { fg = c.fg10 })

    -- Comments
    hi('Comment', { fg = c.gray, style = 'italic' })
    hi('Whitespace', { fg = c.gray, style = 'NONE' })
    hi('NonText', { fg = c.gray, style = 'NONE' })

    -- Program Flow
    hi('Keyword', { fg = c.magenta, style = 'bold' })
    hi('Operator', { fg = c.magenta })
    hi('Statement', { fg = c.magenta })
    hi('Conditional', { fg = c.magenta })
    hi('Tag', { fg = c.magenta })

    -- Functions & Functionnalities
    hi('Function', { fg = c.blue })
    hi('Identifier', { fg = c.blue })
    hi('PreProc', { fg = c.blue })
    hi('Type', { fg = c.blue })
    hi('StorageClass', { fg = c.blue, style = 'bold' })
    hi('Define', { fg = c.blue })

    -- Constants
    hi('Label', { fg = c.cyan })
    hi('Boolean', { fg = c.cyan })
    hi('Constant', { fg = c.cyan })
    hi('Special', { fg = c.cyan })

    -- Data
    hi('@variable', { fg = c.green })

    -- Scalars
    hi('Number', { fg = c.yellow })
    hi('Float', { fg = c.yellow })

    -- Diff
    hi('DiffAdd', { fg = c.green })
    hi('DiffDelete', { fg = c.red })
    hi('DiffChange', { fg = c.blue })
    hi('DiffText', { bg = c.yellow, fg = c.bg_alt })

    -- Terminal
    vim.g.terminal_color_0 = t.black.normal
    vim.g.terminal_color_1 = t.red.normal
    vim.g.terminal_color_2 = t.green.normal
    vim.g.terminal_color_3 = t.yellow.normal
    vim.g.terminal_color_4 = t.blue.normal
    vim.g.terminal_color_5 = t.magenta.normal
    vim.g.terminal_color_6 = t.cyan.normal
    vim.g.terminal_color_7 = t.white.normal
    vim.g.terminal_color_8 = t.black.bright
    vim.g.terminal_color_9 = t.red.bright
    vim.g.terminal_color_10 = t.green.bright
    vim.g.terminal_color_11 = t.yellow.bright
    vim.g.terminal_color_12 = t.blue.bright
    vim.g.terminal_color_13 = t.magenta.bright
    vim.g.terminal_color_14 = t.cyan.bright
    vim.g.terminal_color_15 = t.white.bright

    --
    -- mini.nvim
    --
    -- mini.files
    hi('MiniFilesBorder', { bg = c.bg_alt, fg = c.fg10 })
    hi('MiniFilesBorderModified', { bg = c.bg_alt, fg = c.red })
    hi('MiniFilesCursorLine', { bg = c.bg_accent, fg = c.fg10 })
    hi('MiniFilesDirectory', { bg = c.bg_alt, fg = c.blue })
    hi('MiniFilesFile', { bg = c.bg_alt, fg = c.fg10 })
    hi('MiniFilesNormal', { bg = c.bg_alt, fg = c.fg10 })
    hi('MiniFilesTitle', { bg = c.bg_alt, fg = c.green })
    -- mini.pick
    hi('MiniPickBorder', { bg = c.bg_alt, fg = c.fg10 })
    hi('MiniPickBorderBusy', { bg = c.bg_alt, fg = c.red })
    hi('MiniPickBorderText', { bg = c.bg_alt, fg = c.fg10 })
    hi('MiniPickCursor', { bg = c.fg10, fg = c.bg_primary })
    hi('MiniPickIconDirectory', { bg = c.bg_alt, fg = c.fg10 })
    hi('MiniPickIconFile', { bg = c.bg_alt, fg = c.fg10 })
    hi('MiniPickHeader', { bg = c.bg_alt, fg = c.green })
    hi('MiniPickMatchCurrent', { bg = c.bg_accent, fg = c.fg10 })
    hi('MiniPickMatchMarked', { bg = c.bg_alt, fg = c.green })
    hi('MiniPickMatchRanges', { bg = c.bg_alt, fg = c.green })
    hi('MiniPickNormal', { bg = c.bg_alt, fg = c.fg10 })
    hi('MiniPickPreviewLine', { bg = c.bg_alt, fg = c.fg10 })
    hi('MiniPickPreviewRegion', { bg = c.bg_alt, fg = c.fg10 })
    hi('MiniPickPrompt', { bg = c.bg_alt, fg = c.fg10 })
    -- mini.statusline
    hi('MiniStatuslineDevinfo', { bg = c.bg_alt, fg = c.fg30 })
    hi('MiniStatuslineFileinfo', { bg = c.bg_alt, fg = c.fg30 })
    hi('MiniStatuslineFilename', { bg = c.bg_alt, fg = c.fg10 })
    hi('MiniStatuslineModeNormal', { bg = c.bg_accent, fg = c.fg30 })
    hi('MiniStatuslineModeInsert', { bg = c.bg_accent, fg = c.green })
    hi('MiniStatuslineModeVisual', { bg = c.bg_accent, fg = c.blue })
    hi('MiniStatuslineModeReplace', { bg = c.bg_accent, fg = c.yellow })
    hi('MiniStatuslineModeCommand', { bg = c.bg_accent, fg = c.magenta })
    hi('MiniStatuslineModeOther', { bg = c.bg_accent, fg = c.cyan })
    hi('MiniStatuslineDisabled', { bg = c.bg_accent, fg = c.fg30 })
end

M.setup = function()
    vim.api.nvim_command("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.api.nvim_command("syntax reset")
    end

    vim.g.colors_name = 'nebulae'

    if vim.o.background == "light" then
        c = palette.light
    else
        c = palette.dark
    end

    setHighlights()
end

return M
