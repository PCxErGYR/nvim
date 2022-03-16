-- load custom nvimtree

require('custom.plugins.nvimtree')
require("custom.plugins.cmp")
require("custom.plugins.gitsigns")


local M = {}

-- overriding default plugin configs!
M.treesitter = {
   ensure_installed = {
      "lua",
      "vim",
      "html",
      "css",
      "javascript",
      "json",
      "toml",
      "markdown",
      "c",
      "bash",
   },
}



M.nvimtree = {
   git = {
      enable = true,
   },
    view = {
      side = "right",
      width = 20,
   },
}



return M
