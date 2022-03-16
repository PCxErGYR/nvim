local utils = require('core.utils')

local map = utils.map

local M = {}

M.toggleterm = function()
  map('n', '<leader>tg', '<cmd>lua _LAZYGIT_TOGGLE()<CR>')
  map('n', '<leader>tr', '<cmd>lua _RANGER_TOGGLE()<CR>')
end

M.blankline = function()
  require('indent_blankline').setup({
    use_treesitter = true,
    show_current_context = true,
    context_highlight_list = {
      'IndentBlanklineIndent1',
      'IndentBlanklineIndent2',
      'IndentBlanklineIndent3',
      'IndentBlanklineIndent4',
      'IndentBlanklineIndent5',
      'IndentBlanklineIndent6',
    },
    filetype_exculde = {
      'alpha',
      'packer',
      'NvimTree',
      'lsp-install',
      'help',
      'TelescopePrompt',
      'TelescopeResults',
    },
    buftype_exclude = { 'terminal', 'nofile' },
    context_patterns = {
      'class',
      'return',
      'function',
      'method',
      '^if',
      '^while',
      'jsx_element',
      '^for',
      '^object',
      '^table',
      'block',
      'arguments',
      'if_statement',
      'else_clause',
      'jsx_element',
      'jsx_self_closing_element',
      'try_statement',
      'catch_clause',
      'import_statement',
      'operation_type',
    },
  })
end

return M

