return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = {
					"bash",
					"c",
					"diff",
					"html",
					"lua",
					"luadoc",
					"markdown",
					"markdown_inline",
					"query",
					"vim",
					"vimdoc",
					"rust",
					"go",
					"git_config",
					"gitcommit",
					"git_rebase",
					"gitignore",
					"gitattributes",
					"json5",
					"php",
				},

				sync_install = true,
				auto_install = true,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = { "markdown", "ruby" },
				},

				indent = { enable = true, disable = { "ruby" } },
			})
		end,
	},
}
