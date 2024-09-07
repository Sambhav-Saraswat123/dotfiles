return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = "smart",
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		vim.keymap.set("n", "<leader>ff", ":Telescope find_files <CR>", { desc = "Fuzzy find files in cwd" })
		vim.keymap.set("n", "<leader>fs", ":Telescope live_grep <CR>", { desc = "Fuzzy find string in cwd" })
		vim.keymap.set(
			"n",
			"<leader>fc",
			":Telescope grep_string <CR>",
			{ desc = "Fuzzy find string under cursor in cwd" }
		)
		vim.keymap.set("n", "<leader>ft", ":TodoTelescope <CR>", { desc = "Find todos" })
	end,
}
