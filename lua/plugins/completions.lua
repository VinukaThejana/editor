return {
	-- {
	-- 	"hrsh7th/cmp-nvim-lsp",
	-- },
	-- {
	-- 	"L3MON4D3/LuaSnip",
	-- 	dependencies = {
	-- 		"saadparwaiz1/cmp_luasnip",
	-- 		"rafamadriz/friendly-snippets",
	-- 	},
	-- },
	-- { "hrsh7th/cmp-nvim-lsp-signature-help" },
	-- {
	-- 	"hrsh7th/nvim-cmp",
	-- 	config = function()
	-- 		local cmp = require("cmp")
	-- 		require("luasnip.loaders.from_vscode").lazy_load()
	--
	-- 		cmp.setup({
	-- 			snippet = {
	-- 				expand = function(args)
	-- 					require("luasnip").lsp_expand(args.body)
	-- 				end,
	-- 			},
	-- 			window = {
	-- 				completion = cmp.config.window.bordered(),
	-- 				documentation = cmp.config.window.bordered(),
	-- 			},
	-- 			mapping = cmp.mapping.preset.insert({
	-- 				["<C-b>"] = cmp.mapping.scroll_docs(-4),
	-- 				["<C-f>"] = cmp.mapping.scroll_docs(4),
	-- 				["<C-Space>"] = cmp.mapping.complete(),
	-- 				["<C-e>"] = cmp.mapping.abort(),
	-- 				["<S-Tab>"] = cmp.mapping.select_prev_item(cmp_select),
	-- 				["<Tab>"] = cmp.mapping.select_next_item(cmp_select),
	-- 				["<CR>"] = cmp.mapping.confirm({ select = true }),
	-- 			}),
	-- 			sources = cmp.config.sources({
	-- 				{ name = "nvim_lsp" },
	-- 				{ name = "nvim_lsp_signature_help" },
	-- 				{ name = "luasnip" },
	-- 				{ name = "crates" },
	-- 				{ name = "path" },
	-- 			}, {
	-- 				{ name = "buffer" },
	-- 			}),
	-- 		})
	-- 	end,
	-- },
	{
		"folke/todo-comments.nvim",
		event = "vimenter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{ "b0o/schemastore.nvim" },
	{
		"Saecki/crates.nvim",
		event = { "BufRead Cargo.toml" },
		opts = {
			completion = {
				cmp = { enabled = true },
			},
		},
	},
	{
		"p00f/clangd_extensions.nvim",
		lazy = true,
		config = function() end,
		opts = {
			inlay_hints = {
				inline = false,
			},
			ast = {
				--These require codicons (https://github.com/microsoft/vscode-codicons)
				role_icons = {
					type = "",
					declaration = "",
					expression = "",
					specifier = "",
					statement = "",
					["template argument"] = "",
				},
				kind_icons = {
					Compound = "",
					Recovery = "",
					TranslationUnit = "",
					PackExpansion = "",
					TemplateTypeParm = "",
					TemplateTemplateParm = "",
					TemplateParamObject = "",
				},
			},
		},
	},
}
