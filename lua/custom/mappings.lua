local map = require("core.utils").map

-- Run code 
map("n", "<leader>r", ":w!<CR>:Jaq fterm<CR>")

-- Terminal
map("n","<leader>x",":lua require('FTerm').toggle()<CR>")

