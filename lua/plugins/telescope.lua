return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = {
						hidden = false,
						theme = "ivy",
					},
					grep_string = {
						hidden = true,
						theme = "ivy",
					},
					live_grep = {
						hidden = true,
						theme = "ivy",
					},
					resume = {
						hidden = true,
						theme = "ivy",
					},
					oldfiles = {
						hidden = true,
						theme = "ivy",
					},
					keymaps = {
						hidden = true,
						theme = "ivy",
					},
					help_tags = {
						hidden = true,
						theme = "ivy",
					},
					buffers = {
						theme = "ivy",
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>sh", builtin.help_tags, {
				desc = "[S]earch [H]elp",
			})
			vim.keymap.set("n", "<leader>sk", builtin.keymaps, {
				desc = "[S]earch [K]eymaps",
			})
			vim.keymap.set("n", "<leader><leader>", builtin.find_files, {
				desc = "[ ] Find files",
			})
			vim.keymap.set("n", "<leader>ss", builtin.builtin, {
				desc = "[S]earch [S]elect Telescope",
			})
			vim.keymap.set("n", "<leader>sw", builtin.grep_string, {
				desc = "[S]earch current [W]ord",
			})
			vim.keymap.set("n", "<leader>sg", builtin.live_grep, {
				desc = "[S]earch by [G]rep",
			})
			vim.keymap.set("n", "<leader>sd", builtin.diagnostics, {
				desc = "[S]earch [D]iagnostics",
			})
			vim.keymap.set("n", "<leader>sr", builtin.resume, {
				desc = "[S]earch [R]esume",
			})
			vim.keymap.set("n", "<leader>s.", builtin.oldfiles, {
				desc = '[S]earch Recent Files ("." for repeat)',
			})
			vim.keymap.set("n", "<tab>", builtin.buffers, {
				desc = "Find exsiting buffers",
			})
			vim.keymap.set("n", "<leader>s/", function()
				builtin.live_grep({
					grep_open_files = true,
					prompt_title = "Live Grep in Open Files",
				})
			end, { desc = "[S]earch [/] in Open Files" })

			-- Shortcut for searching your Neovim configuration files
			vim.keymap.set("n", "<leader>sn", function()
				builtin.find_files({ cwd = vim.fn.stdpath("config") })
			end, { desc = "[S]earch [N]eovim files" })

			require("telescope").load_extension("ui-select")
		end,
	},
}
