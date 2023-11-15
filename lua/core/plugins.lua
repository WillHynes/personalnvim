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
  'williamboman/mason.nvim',
  'stevearc/oil.nvim',
  'nvim-treesitter/nvim-treesitter',
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.4",
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
  'nvim-tree/nvim-web-devicons',
  'nvim-tree/nvim-tree.lua',
}

local opts = {}

require("lazy").setup(plugins, opts)
