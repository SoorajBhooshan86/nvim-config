return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	config = function()
		require("snacks").setup({
			input = { enabled = true },
			picker = {
				enabled = true,
				ui_select = true, -- this makes code actions use snacks picker
			},
		})
	end,
}
