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
hi('Title', { fg = c.beige, style = 'bold' })
hi('Todo', { style = 'inverse,bold' })
hi('Directory', { fg = c.brown, style = 'underline' })
hi('SpecialKey', { bg = c.black50, fg = c.black10 })
hi('ErrorMsg', { bg = c.black50, fg = c.red, style = 'bold' })
hi('WarningMsg', { fg = c.orange })
hi('Underlined', { style = 'underline' })
hi('SpellCap', { fg = c.blue, style = 'underline' })
hi('SpellBad', { fg = c.orange, style = 'underline' })
hi('Error', { fg = c.red, style = 'underline' })

-- Comments
hi('Comment', { fg = c.gray, style = 'italic' })
hi('Whitespace', { fg = c.black60, style = 'NONE' })
hi('NonText', { fg = c.black60, style = 'NONE' })

-- Keywords
hi('Conditional', { fg = c.beige })
hi('Define', { fg = c.beige })
hi('Keyword', { fg = c.beige, style = 'bold' })
hi('Operator', { fg = c.beige })
hi('PreProc', { fg = c.beige })
hi('Statement', { fg = c.beige })
hi('Tag', { fg = c.beige })

-- Constants & Primitives
hi('Constant', { fg = c.green })
hi('Number', { fg = c.green })
hi('Float', { fg = c.green })
hi('Boolean', { fg = c.green })
hi('Character', { fg = c.green })
hi('Label', { fg = c.green })

-- Types
hi('Function', { fg = c.brown })
hi('Type', { fg = c.blue })
hi('Identifier', { fg = c.blue })
hi('StorageClass', { fg = c.blue, style = 'bold' })

-- Strings
hi('String', { fg = c.white30 })

-- Diff
hi('DiffAdd', { fg = c.green })
hi('DiffDelete', { fg = c.red })
hi('DiffChange', { fg = c.beige })
hi('DiffText', { bg = c.orange, fg = c.black10 })

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
hi('CmpItemAbbrDeprecated', { bg = c.orange, fg = c.black10 })
hi('CmpItemAbbrMatch', { bg = c.black50, fg = c.white10 })
hi('CmpItemAbbrMatchFuzzy', { bg = c.black50, fg = c.white10 })
hi('CmpItemMenu', { fg = c.black60 })

hi('CmpItemKindKeyword', { bg = c.beige, fg = c.black10 })
hi('CmpItemKindVariable', { bg = c.beige, fg = c.black10 })
hi('CmpItemKindOperator', { bg = c.beige, fg = c.black10 })
hi('CmpItemKindModule', { bg = c.beige, fg = c.black10 })
hi('CmpItemKindEnumMember', { bg = c.beige, fg = c.black10 })

hi('CmpItemKindClass', { bg = c.blue, fg = c.black10 })
hi('CmpItemKindStruct', { bg = c.blue, fg = c.black10 })
hi('CmpItemKindInterface', { bg = c.blue, fg = c.black10 })
hi('CmpItemKindEnum', { bg = c.blue, fg = c.black10 })

hi('CmpItemKindFunction', { bg = c.brown, fg = c.black10 })
hi('CmpItemKindMethod', { bg = c.brown, fg = c.black10 })
hi('CmpItemKindConstructor', { bg = c.brown, fg = c.black10 })
hi('CmpItemKindReference', { bg = c.brown, fg = c.black10 })

hi('CmpItemKindProperty', { bg = c.green, fg = c.black10 })
hi('CmpItemKindField', { bg = c.green, fg = c.black10 })
hi('CmpItemKindEvent', { bg = c.green, fg = c.black10 })
hi('CmpItemKindConstant', { bg = c.green, fg = c.black10 })
hi('CmpItemKindValue', { bg = c.green, fg = c.black10 })

hi('CmpItemKindText', { bg = c.white30, fg = c.black10 })
hi('CmpItemKindUnit', { bg = c.white30, fg = c.black10 })

