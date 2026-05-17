return {
	"nvim-mini/mini.nvim",
	config = function()
		require("mini.files").setup()
		require("mini.pairs").setup()
		require("mini.indentscope").setup({
			symbol = "│",
		})
	end,
}
