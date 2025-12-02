return {
	{
		"nvim-mini/mini.indentscope",
		branch = "stable",
		config = function()
			require("mini.indentscope").setup()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			scope = {
				show_start = false,
				show_end = false,
				enabled = false,
			},
			indent = {
				char = "╎",
			},
		},
	},
}
