return {
	{
		"tjdevries/colorbuddy.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	"rktjmp/lush.nvim",
	"tckmn/hotdog.vim",
	"dundargoc/fakedonalds.nvim",
	"craftzdog/solarized-osaka.nvim",
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "auto", -- auto, main, moon, or dawn
				dark_variant = "moon", -- main, moon, or dawn
				disable_background = true,
				styles = {
					italic = false,
				},
			})
		end,
	},
	"eldritch-theme/eldritch.nvim",
	"jesseleite/nvim-noirbuddy",
	"miikanissi/modus-themes.nvim",
	"rebelot/kanagawa.nvim",
	"gremble0/yellowbeans.nvim",
	"rockyzhang24/arctic.nvim",
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
				transparent = false, -- Enable this to disable setting the background color
				terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
				styles = {
					-- Style to be applied to different syntax groups
					-- Value is any valid attr-list value for `:help nvim_set_hl`
					comments = { italic = false },
					keywords = { italic = false },
					-- Background styles. Can be "dark", "transparent" or "normal"
					sidebars = "dark", -- style for sidebars, see below
					floats = "dark", -- style for floating windows
				},
			})
		end,
	},
	"Shatur/neovim-ayu",
	"RRethy/base16-nvim",
	"xero/miasma.nvim",
	"cocopon/iceberg.vim",
	"kepano/flexoki-neovim",
	"ntk148v/komau.vim",
	{ "catppuccin/nvim", name = "catppuccin", flavor = "auto" },
	"uloco/bluloco.nvim",
	"LuRsT/austere.vim",
	"ricardoraposo/gruvbox-minor.nvim",
	"NTBBloodbath/sweetie.nvim",
	{
		"maxmx03/fluoromachine.nvim",
		-- config = function()
		--   local fm = require "fluoromachine"
		--   fm.setup { glow = true, theme = "fluoromachine" }
		-- end,
	},
}
