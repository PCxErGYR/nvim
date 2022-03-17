-- Just an example, supposed to be placed in /lua/custom/
local plugin_conf = require("custom.plugins.configs")
local userPlugins = require("custom.plugins")



local M = {}


M.ui = {
  -- theme="gruvchad",
  -- theme="onedark",
  theme = "catppuccin",
  -- transparency = true,
}

---- PLUGIN OPTIONS ----

M.plugins = {
   options = {
      statusline = {
         -- truncate statusline on small screens
         shortline = true,
         style = "block", -- default, round , slant , block , arrow
      },
  },
   install = userPlugins,
}

M.blankline = {
    space_char_blankline = " ??",
    show_current_context = true,
    show_trailing_blankline_indent = false,
    show_first_indent_level = false,
    buftype_exclude = { 'terminal', 'nofile' },
    filetype_exclude = {
         "help",
         "terminal",
         "alpha",
         "packer",
         "lspinfo",
         "TelescopePrompt",
         "TelescopeResults",
         "nvchad_cheatsheet",
         "lsp-installer",
         "",
      },
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
}


return M

