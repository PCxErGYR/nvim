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




return M

