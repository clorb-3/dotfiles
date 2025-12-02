return {
	{ "nkxxll/ghostty-default-style-dark.nvim" },
	{ "shaunsingh/nord.nvim" },
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			require("gruvbox").setup()
			vim.cmd("colorscheme gruvbox")
		end,
	},
}
