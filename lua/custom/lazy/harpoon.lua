return {
	{
		"ThePrimeagen/harpoon",
		config = function()
			local harpoon = require("harpoon")

			harpoon:setup()

			vim.keymap.set("n", "<m-h><m-a>", function()
				harpoon:list():add()
			end)
			vim.keymap.set("n", "<m-h><m-l>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

			vim.keymap.set("n", "<m-1>", function()
				harpoon:list():select(1)
			end)
			vim.keymap.set("n", "<m-2>", function()
				harpoon:list():select(2)
			end)
			vim.keymap.set("n", "<m-3>", function()
				harpoon:list():select(3)
			end)
			vim.keymap.set("n", "<m-4>", function()
				harpoon:list():select(4)
			end)
			vim.keymap.set("n", "<leader><C-h>", function()
				harpoon:list():replace_at(1)
			end)
			vim.keymap.set("n", "<leader><C-t>", function()
				harpoon:list():replace_at(2)
			end)
			vim.keymap.set("n", "<leader><C-n>", function()
				harpoon:list():replace_at(3)
			end)
			vim.keymap.set("n", "<leader><C-s>", function()
				harpoon:list():replace_at(4)
			end)
		end,
	},
}