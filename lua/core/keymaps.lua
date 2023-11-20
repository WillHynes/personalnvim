vim.g.mapleader = " "

-- NvimTree Mappings
vim.keymap.set('n', '<leader>e', ':NvimTreeFindFile<cr>')
vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<cr>')

-- Buffer Mappings
vim.keymap.set('n', '<tab>', ':BufferNext<cr>')
vim.keymap.set('n', '<s-tab>', ':BufferPrevious<cr>')
vim.keymap.set('n', '<leader>x', ':BufferClose<cr>')

-- Harpoon mappings
vim.keymap.set('n', '<leader>ha', ':lua require("harpoon.mark").add_file()<cr>')
vim.keymap.set('n', '<leader>hq', ':lua require("harpoon.ui").toggle_quick_menu()<cr>')
vim.keymap.set('n', '<leader>hn', ':lua require("harpoon.ui").nav_next()<cr>')
vim.keymap.set('n', '<leader>hp', ':lua require("harpoon.ui").nav_prev()<cr>')

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

vim.keymap.set('n', '<leader>ai', ':TermExec cmd="ollama run codellama" direction=float<cr>')

vim.keymap.set("n", "<leader>px", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>pw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>pd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>pq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>pl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)

vim.opt.spelllang = 'en_gb'

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
