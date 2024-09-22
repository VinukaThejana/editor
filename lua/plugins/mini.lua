return {
	{
		"echasnovski/mini.surround",
		version = "*",
		recommended = true,
	},
	{
		"echasnovski/mini.pairs",
		version = "*",
		recommended = true,
	},
	{
		"echasnovski/mini.nvim",
		version = "*",
		recommended = true,
		config = function()
			require("mini.surround").setup()
			require("mini.pairs").setup()
		end,
	},
}
