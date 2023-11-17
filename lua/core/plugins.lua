local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

  -- Navigation
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.4",
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
  'nvim-tree/nvim-tree.lua',
  'stevearc/oil.nvim',

  -- Aesthetic plugins
  'rebelot/kanagawa.nvim',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',

  -- QOL plugins
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
	  },
  },
  { 'nvim-focus/focus.nvim', version = '*' },
  {'akinsho/toggleterm.nvim', version = "*", config = true},

  -- Autocompletion / LSP plugins - this includes highlighting etc
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'rafamadriz/friendly-snippets',
  'm4xshen/autoclose.nvim',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'nvim-treesitter/nvim-treesitter',
}

local opts = {}

require("lazy").setup(plugins, opts)
