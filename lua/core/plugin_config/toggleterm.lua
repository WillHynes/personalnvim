require("toggleterm").setup({
	float_opts = {
		border = "curved",
	},
})

vim.api.nvim_set_keymap("n", "<leader>zg", "<cmd>lua Lazygit_toggle()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"n",
	"<leader>cr",
	':TermExec cmd="cargo r -r" direction=float<cr>',
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>ai",
	':TermExec cmd="ollama run codellama" direction=float<cr>',
	{ noremap = true, silent = true }
)
