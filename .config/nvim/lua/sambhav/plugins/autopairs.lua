return {
	"windwp/nvim-autopairs",
	event = { "InsertEnter" },
	dependencies = {
		"hrsh7th/nvim-cmp",
	},
	config = function()
		local autopairs = require("nvim-autopairs")
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		local cmp = require("cmp")

		autopairs.setup({
			checkts = true,
			ts_config = {
				ts_config = {
					lua = { "string" },
				},
			},
		})

		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end,
}
