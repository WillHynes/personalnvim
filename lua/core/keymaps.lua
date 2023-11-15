vim.g.mapleader = " "

vim.keymap.set('n', ';', ':')
vim.keymap.set('i', 'kj', '<esc>')
vim.keymap.set('n', '<leader>e', ':NvimTreeFocus<cr>')
vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<cr>')

vim.cmd([[
  set number
  set relativenumber

  set autoindent
  set tabstop=4
  set shiftwidth=4
  set smarttab
  set softtabstop=4

  set mouse=a
]])
