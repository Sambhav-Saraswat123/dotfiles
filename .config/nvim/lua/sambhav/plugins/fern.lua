return {
	"lambdalisue/vim-fern",
	config = function()
		vim.keymap.set("n", "<leader>e", ":Fern %:h <CR>", { desc = "Open fern" })
	end,
}
