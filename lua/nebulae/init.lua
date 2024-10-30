local palette = require('nebulae.palette')

vim.g.colors_name = 'nebulae'

vim.cmd('highlight clear')
vim.cmd('set t_Co=256')

local c = palette.colors
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

-- UI
hi('Normal', { bg = c.black20, fg = c.white10 })
hi('Visual', { bg = c.black50, fg = c.white10 })
hi('Cursor', { bg = c.white10, fg = c.black30 })
hi('CursorLine', { bg = c.black10 })
hi('CursorColumn', { bg = c.black10 })
hi('CursorLineNr', { bg = c.black10, fg = c.white10 })
hi('MatchParen', { bg = c.white10, fg = c.black30, style = 'reverse' })
hi('ColorColumn', { bg = c.black30, fg = c.white10 })
hi('LineNr', { bg = c.black20, fg = c.black60 })
hi('SignColumn', { bg = c.black20, fg = c.white10 })
hi('VertSplit', { bg = c.black10, fg = c.white10 })
hi('StatusLine', { bg = c.black10, fg = c.white10 })
hi('Pmenu', { bg = c.black10, fg = c.white10 })
hi('PmenuSel', { bg = c.black40, fg = c.white10 })
hi('IncSearch', { bg = c.white10, fg = c.black50 })
hi('Search', { bg = c.black50, fg = c.white10 })
hi('Folded', { bg = c.black50, fg = c.white10 })
hi('Special', { fg = c.white10 })
hi('Title', { fg = c.magenta, style = 'bold' })
hi('Todo', { style = 'inverse,bold' })
hi('Directory', { fg = c.blue, style = 'underline' })
hi('SpecialKey', { bg = c.black50, fg = c.black10 })
hi('ErrorMsg', { bg = c.black50, fg = c.red, style = 'bold' })
hi('WarningMsg', { fg = c.yellow })
hi('Underlined', { style = 'underline' })
hi('SpellCap', { fg = c.green, style = 'underline' })
hi('SpellBad', { fg = c.yellow, style = 'underline' })
hi('Error', { fg = c.red, style = 'underline' })

-- Comments
hi('Comment', { fg = c.black60, style = 'italic' })
hi('Whitespace', { fg = c.black60, style = 'NONE' })
hi('NonText', { fg = c.black60, style = 'NONE' })

-- Keywords
hi('Conditional', { fg = c.magenta })
hi('Define', { fg = c.magenta })
hi('Keyword', { fg = c.magenta, style = 'bold' })
hi('Operator', { fg = c.magenta })
hi('PreProc', { fg = c.magenta })
hi('Statement', { fg = c.magenta })
hi('Tag', { fg = c.magenta })

-- Constants & Primitives
hi('Constant', { fg = c.yellow })
hi('Number', { fg = c.yellow })
hi('Float', { fg = c.yellow })
hi('Boolean', { fg = c.yellow })
hi('Character', { fg = c.yellow })
hi('Label', { fg = c.yellow })

-- Types
hi('Function', { fg = c.blue })
hi('Type', { fg = c.green })
hi('Identifier', { fg = c.green })
hi('StorageClass', { fg = c.green, style = 'bold' })

-- Strings
hi('String', { fg = c.white30 })

-- Diff
hi('DiffAdd', { fg = c.green })
hi('DiffDelete', { fg = c.red })
hi('DiffChange', { fg = c.blue })
hi('DiffText', { bg = c.yellow, fg = c.black10 })

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

-- CMP
hi('CmpItemAbbrDeprecated', { fg = c.yellow })
hi('CmpItemAbbrMatch', { bg = c.black50, fg = c.white10 })
hi('CmpItemAbbrMatchFuzzy', { bg = c.black50, fg = c.white10 })
hi('CmpItemMenu', { fg = c.black60 })

hi('CmpItemKindKeyword', { fg = c.magenta })
hi('CmpItemKindVariable', { fg = c.magenta })
hi('CmpItemKindOperator', { fg = c.magenta })
hi('CmpItemKindModule', { fg = c.magenta })
hi('CmpItemKindEnumMember', { fg = c.magenta })

hi('CmpItemKindClass', { fg = c.green })
hi('CmpItemKindStruct', { fg = c.green })
hi('CmpItemKindInterface', { fg = c.green })
hi('CmpItemKindEnum', { fg = c.green })

hi('CmpItemKindFunction', { fg = c.blue })
hi('CmpItemKindMethod', { fg = c.blue })
hi('CmpItemKindConstructor', { fg = c.blue })
hi('CmpItemKindReference', { fg = c.blue })

hi('CmpItemKindProperty', { fg = c.magenta })
hi('CmpItemKindField', { fg = c.magenta })
hi('CmpItemKindEvent', { fg = c.magenta })
hi('CmpItemKindConstant', { fg = c.magenta })
hi('CmpItemKindValue', { fg = c.magenta })

hi('CmpItemKindText', { fg = c.white30 })
hi('CmpItemKindUnit', { fg = c.white30 })

