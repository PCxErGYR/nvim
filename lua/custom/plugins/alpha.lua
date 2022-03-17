local present, alpha = pcall(require, 'alpha')

if not present then
  return
end

local dashboard = require('alpha.themes.dashboard')

-- 高亮按钮组
local button = function(...)
  local result = dashboard.button(...)
  result.opts.hl = 'AlphaButtons'
  result.opts.hl_shortcut = ''
  return result
end

local header = {
'',
'░█▄▀░█▒█░█▄░█▒█▀▄▒██▀░█▄█░▀▄▀',
'░█▒█░▀▄█░█▒▀█░█▀▒░█▄▄▒█▒█░█▒█',
''
}
local buttons = {
  button('SPC f n', '  New file', ':ene <BAR> startinsert <CR>'),
  button("SPC f t", "  To Go  ", ":Telescope buffers <CR>"),
  button("SPC f o", "  Recent File  ", ":Telescope oldfiles<CR>"),
  button("SPC f f", "  Find File  ", ":Telescope find_files<CR>"),
  button("SPC f w", "  Find Word  ", ":Telescope live_grep<CR>"),
  button("SPC b m", "  Bookmarks  ", ":Telescope marks<CR>"),
  button("SPC t h", "  Themes  ", ":Telescope themes<CR>"),
  button("SPC e s", "  Settings", ":e $MYVIMRC | :cd %:p:h <CR>"),
  button('SPC q', '  Quit', ':qa<CR>'),
}
local footer = 'Action speak load than words. by 𝕜𝕦𝕟𝕡𝕖𝕙𝕩'

-- 布局
dashboard.section.header.val = header
dashboard.section.buttons.val = buttons
dashboard.section.footer.val = footer

-- 高亮
dashboard.section.footer.opts.hl = 'AlphaType'
dashboard.section.header.opts.hl = 'AlphaHeader'

alpha.setup(dashboard.opts)

