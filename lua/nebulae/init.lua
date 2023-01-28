local palette = require('nebulae.palette')

vim.g.colors_name = 'nebulae'

vim.cmd('highlight clear')
vim.cmd('set t_Co=256')

local c = palette.colors

local function hi(group, format)
	local guibg    = format.bg    or 'NONE'
	local guifg    = format.fg    or 'NONE'
	local guistyle = format.style or 'NONE'

	local style = "hi " .. group
	.. ' guibg=' .. guibg
	.. ' guifg=' .. guifg
	.. ' gui='   .. guistyle

	vim.cmd(style)
end

-- UI
hi('Normal', {bg = c.black20, fg = c.white10})
hi('NonText', {bg = c.black20, fg = c.white10})
hi('Visual', {bg = c.black10})
hi('Cursor', {bg = c.white10, fg = c.black30})
hi('CursorLine', {bg = c.black10})
hi('CursorColumn', {bg = c.black10})
hi('CursorLineNr', {bg = c.black10, fg = c.white10})
hi('MatchParen', {bg = c.white10, fg = c.black30, style = 'reverse'})
hi('ColorColumn', {bg = c.black30, fg = c.white10})
hi('LineNr', {bg = c.black20, fg = c.black60})
hi('SignColumn', {bg = c.black20, fg = c.white10})
hi('VertSplit', {bg = c.black10, fg = c.white10})
hi('StatusLine', {bg = c.black10, fg = c.white10})
hi('Pmenu', {bg = c.black10, fg = c.white10})
hi('PmenuSel', {bg = c.black40, fg = c.white10})
hi('IncSearch', {bg = c.white10, fg = c.black50})
hi('Search', {bg = c.black50, fg = c.white10})
hi('Folded', {bg = c.black50, fg = c.white10})
hi('Special', {fg = c.white10})
hi('Title', {fg = c.beige, style = 'bold'})
hi('Todo', {style = 'inverse,bold'})
hi('Directory', {fg = c.brown, style = 'underline'})
hi('SpecialKey', {bg = c.black50, fg = c.black10})
hi('ErrorMsg', {bg = c.black50, fg = c.red, style = 'bold'})
hi('WarningMsg', {fg = c.orange})
hi('Underlined', {style = 'underline'})
hi('SpellCap', {fg = c.blue, style = 'underline'})
hi('SpellBad', {fg = c.orange, style = 'underline'})
hi('Error', {fg = c.red, style = 'underline'})

-- Comments
hi('Comment', {fg = c.gray, style = 'italic'})

-- Keywords
hi('Conditional', {fg = c.beige})
hi('Define', {fg = c.beige})
hi('Keyword', {fg = c.beige, style = 'bold'})
hi('Operator', {fg = c.beige})
hi('PreProc', {fg = c.beige})
hi('Statement', {fg = c.beige})
hi('Tag', {fg = c.beige})

-- Constants & Primitives
hi('Constant', {fg = c.green})
hi('Number', {fg = c.green})
hi('Float', {fg = c.green})
hi('Boolean', {fg = c.green})
hi('Character', {fg = c.green})
hi('Label', {fg = c.green})

-- Types
hi('Function', {fg = c.brown})
hi('Type', {fg = c.blue})
hi('Identifier', {fg = c.blue})
hi('StorageClass', {fg = c.blue, style = 'bold'})

-- Strings
hi('String', {fg = c.white30})

-- Diff
hi('DiffAdd', {fg = c.green})
hi('DiffDelete', {fg = c.red})
hi('DiffChange', {fg = c.beige})
