require("toggleterm").setup {
    float_opts = {
        border = "curved"
    }
}

local Terminal = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", direction = "float" })

function Lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>zg", "<cmd>lua Lazygit_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>cr", ":TermExec cmd=\"cargo r -r\" direction=float<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>ai", ":TermExec cmd=\"ollama run codellama\" direction=float<cr>", {noremap = true, silent = true})

