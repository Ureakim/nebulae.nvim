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
    hi('Normal', { bg = c.bg20, fg = c.fg10 })
    hi('NormalFloat', { bg = c.bg10, fg = c.fg10 })
    hi('Visual', { bg = c.bg30})
    hi('Cursor', { bg = c.fg10, fg = c.bg20 })
    hi('CursorLine', { bg = c.bg30 })
    hi('CursorColumn', { bg = c.bg30 })
    hi('CursorLineNr', { bg = c.bg30, fg = c.fg10 })
    hi('MatchParen', { bg = c.fg10, fg = c.bg20, style = 'reverse' })
    hi('ColorColumn', { bg = c.bg30, fg = c.fg10 })
    hi('LineNr', { bg = c.bg20, fg = c.gray })
    hi('SignColumn', { bg = c.bg20, fg = c.fg10 })
    hi('VertSplit', { bg = c.bg10, fg = c.fg10 })
    hi('StatusLine', { bg = c.bg10, fg = c.fg10 })
    hi('Pmenu', { bg = c.bg10, fg = c.fg10 })
    hi('PmenuSel', { bg = c.bg30, fg = c.fg10 })
    hi('IncSearch', { bg = c.fg10, fg = c.bg20 })
    hi('Search', { bg = c.bg20, fg = c.fg10 })
    hi('Folded', { bg = c.bg20, fg = c.fg10 })
    hi('Special', { fg = c.fg10 })
    hi('Title', { fg = c.magenta, style = 'bold' })
    hi('Todo', { style = 'inverse,bold' })
    hi('Directory', { fg = c.blue, style = 'underline' })
    hi('SpecialKey', { bg = c.bg20, fg = c.bg10 })
    hi('ErrorMsg', { bg = c.bg20, fg = c.red, style = 'bold' })
    hi('WarningMsg', { fg = c.yellow })
    hi('Underlined', { style = 'underline' })
    hi('SpellCap', { fg = c.green, style = 'underline' })
    hi('SpellBad', { fg = c.yellow, style = 'underline' })
    hi('Error', { fg = c.red, style = 'underline' })

    -- Comments
    hi('Comment', { fg = c.gray, style = 'italic' })
    hi('Whitespace', { fg = c.gray, style = 'NONE' })
    hi('NonText', { fg = c.gray, style = 'NONE' })

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
    hi('@Variable', { fg = c.green })
    hi('StorageClass', { fg = c.green, style = 'bold' })

    -- Strings
    hi('String', { fg = c.fg30 })
    hi('Delimiter', { fg = c.fg30 })

    -- Diff
    hi('DiffAdd', { fg = c.green })
    hi('DiffDelete', { fg = c.red })
    hi('DiffChange', { fg = c.blue })
    hi('DiffText', { bg = c.yellow, fg = c.bg10 })

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
    hi('MiniFilesBorder', { bg = c.bg10, fg = c.fg10 })
    hi('MiniFilesBorderModified', { bg = c.bg10, fg = c.red })
    hi('MiniFilesCursorLine', { bg = c.bg30, fg = c.fg10 })
    hi('MiniFilesDirectory', { bg = c.bg10, fg = c.blue })
    hi('MiniFilesFile', { bg = c.bg10, fg = c.fg10 })
    hi('MiniFilesNormal', { bg = c.bg10, fg = c.fg10 })
    hi('MiniFilesTitle', { bg = c.bg10, fg = c.green })
    -- mini.pick
    hi('MiniPickBorder', { bg = c.bg10, fg = c.fg10 })
    hi('MiniPickBorderBusy', { bg = c.bg10, fg = c.red })
    hi('MiniPickBorderText', { bg = c.bg10, fg = c.fg10 })
    hi('MiniPickCursor', { bg = c.fg10, fg = c.bg20 })
    hi('MiniPickIconDirectory', { bg = c.bg10, fg = c.fg10 })
    hi('MiniPickIconFile', { bg = c.bg10, fg = c.fg10 })
    hi('MiniPickHeader', { bg = c.bg10, fg = c.green })
    hi('MiniPickMatchCurrent', { bg = c.bg30, fg = c.fg10 })
    hi('MiniPickMatchMarked', { bg = c.bg10, fg = c.green })
    hi('MiniPickMatchRanges', { bg = c.bg10, fg = c.green })
    hi('MiniPickNormal', { bg = c.bg10, fg = c.fg10 })
    hi('MiniPickPreviewLine', { bg = c.bg10, fg = c.fg10 })
    hi('MiniPickPreviewRegion', { bg = c.bg10, fg = c.fg10 })
    hi('MiniPickPrompt', { bg = c.bg10, fg = c.fg10 })

    -- CMP
    hi('CmpItemAbbrDeprecated', { fg = c.yellow })
    hi('CmpItemAbbrMatch', { bg = c.bg20, fg = c.fg10 })
    hi('CmpItemAbbrMatchFuzzy', { bg = c.bg20, fg = c.fg10 })
    hi('CmpItemMenu', { fg = c.bg20 })

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

    hi('CmpItemKindText', { fg = c.fg30 })
    hi('CmpItemKindUnit', { fg = c.fg30 })
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
