return {
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
         require("custom.plugins.null-ls").setup()
      end,
   },
   {
    'NvChad/nvim-colorizer.lua',
    event = 'BufRead',
    config = "require('custom.plugins.misc').colorizer()",
  },
  {
  "mattn/emmet-vim",
  setup = function () -- load stuff before the plugin is loaded
    vim.g.user_emmet_leader_key = '<c-m>'

    vim.g.user_emmet_settings = {
      indent_blockelement = 1,
    }
  end
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
  }
}
