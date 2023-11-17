vim.g.mapleader = " "

-- NvimTree Mappings
vim.keymap.set('n', '<leader>e', ':NvimTreeFindFile<cr>')
vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<cr>')

-- Buffer Mappings
vim.keymap.set('n', '<tab>', ':BufferNext<cr>')
vim.keymap.set('n', '<s-tab>', ':BufferPrevious<cr>')
vim.keymap.set('n', '<leader>x', ':BufferClose<cr>')

-- Focus Mappings
local focusmap = function(direction)
    vim.keymap.set('n', '<Leader>'..direction, function()
        require('focus').split_command(direction)
    end, { desc = string.format('Create or move to split (%s)', direction) })
end

-- Use `<Leader>h` to split the screen to the left, same as command FocusSplitLeft etc
focusmap('h')
focusmap('j')
focusmap('k')
focusmap('l')

-- QOL Mapping
vim.keymap.set('n', ';', ':')
vim.keymap.set('i', 'kj', '<esc>')
vim.keymap.set('n', '<leader>q', ':qa<cr>')
vim.keymap.set('n', '<leader>wq', ':wqa<cr>')
vim.keymap.set('n', '<leader>so', ':so %<cr>')
vim.keymap.set('n', '<esc>', '<esc>:noh<cr>')
vim.keymap.set('n', '<leader>v', ':ToggleTerm size=90 direction=vertical<cr>')

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
