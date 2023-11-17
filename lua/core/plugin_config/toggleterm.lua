require("toggleterm").setup {
    float_opts = {
        border = "curved"
    }
}

local Terminal = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", direction = "float" })
local cargo_run = Terminal:new({ cmd = "cargo r -r", direction = "float" })

function Lazygit_toggle()
  lazygit:toggle()
end

function Cargo_run_toggle()
  cargo_run:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua Lazygit_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>cr", "<cmd>lua Cargo_run_toggle()<CR>", {noremap = true, silent = true})

