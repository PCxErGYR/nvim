return {
  {
    'NvChad/nvim-base16.lua',
    after = 'packer.nvim',
    config = function()
      require('colors').init()
    end,
  },
  {'gpanders/editorconfig.nvim'},
  {'yamatsum/nvim-cursorline'},
  {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'custom.plugins.alpha'.config)
    end
  },
  {
    'akinsho/toggleterm.nvim',
    keys = '<C-\\>',
    config = "require('custom.plugins.toggleterm')",
    setup = function()
      require('custom.plugins.misc').toggleterm()
    end
  },
  {
      "jose-elias-alvarez/null-ls.nvim",
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.misc").null_ls()
      end,
   },
   {
    'NvChad/nvim-colorizer.lua',
    event = 'BufRead',
    config = "require('custom.plugins.misc').colorizer()",
  },
  {
    'neovim/nvim-lspconfig',
    config = "require('custom.plugins.lsp')",
    opt = true,
    setup = function()
      require('core.utils').packer_lazy_load('nvim-lspconfig')
      vim.defer_fn(function()
        vim.cmd('if &ft == "packer" | echo "" | else | silent! e %')
      end, 0)
    end,
  },
  {
    'williamboman/nvim-lsp-installer',
  },
  {
    -- Theme
    "catppuccin/nvim",
    as = "catppuccin"
  }
}
