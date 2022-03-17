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
  '      ▄▄▄▄▄███████████████████▄▄▄▄▄       ',
  '    ▄██████████▀▀▀▀▀▀▀▀▀▀██████▀████▄     ',
  '  ▄██▀████████▄             ▀▀████ ▀██▄   ',
  ' ▀██▄▄██████████████████▄▄▄         ▄██▀  ',
  '   ▀█████████████████████████▄    ▄██▀    ',
  '     ▀████▀▀▀▀▀▀▀▀▀▀▀▀█████████▄▄██▀      ',
  '       ▀███▄              ▀██████▀        ',
  '         ▀██████▄         ▄████▀          ',
  '            ▀█████▄▄▄▄▄▄▄███▀             ',
  '              ▀████▀▀▀████▀               ',
  '                ▀███▄███▀                 ',
  '                   ▀█▀                    ',
}
local buttons = {
  button("r", "  Recent File  ", ":Telescope oldfiles <CR>"),
  button('e', '  New File', ':ene <BAR> startinsert <CR>'),
  button("f", "  Find File  ", ":Telescope find_files<CR>"),
  button("w", "ﲀ  Find Word  ", ":Telescope live_grep<CR>"),
  button("m", "  Bookmarks  ", ":Telescope marks<CR>"),
  button("h", "  Themes  ", ":Telescope themes<CR>"),
  button("s", "  Settings", ":e $MYVIMRC | :cd %:p:h <CR>"),
  button('q', '  Quit', ':qa<CR>'),
}
local footer = 'Power by kunpehx'

-- 布局
-- dashboard.section.header.val = header
dashboard.section.buttons.val = buttons
dashboard.section.footer.val = footer

-- 高亮
dashboard.section.footer.opts.hl = 'AlphaType'
dashboard.section.header.opts.hl = 'AlphaHeader'

alpha.setup(dashboard.opts)
