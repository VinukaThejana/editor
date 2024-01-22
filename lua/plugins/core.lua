return {
  {
    "projekt0n/github-nvim-theme",
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark_dimmed",
    },
  },

  {
    "tpope/vim-fugitive",
  },

  {
    "prichrd/netrw.nvim",
  },

  {
    "ThePrimeagen/harpoon",
    keys = {
      {
        "<leader>lh",
        function()
          require("harpoon.ui").toggle_quick_menu()
        end,
        desc = "Harpoon quick menu",
      },
      {
        "<leader>ah",
        function()
          require("harpoon.mark").add_file()
        end,
        desc = "Add a file to the harpoon list",
      },
      {
        "<C-k>",
        function()
          require("harpoon.ui").nav_next()
        end,
        desc = "Navigate to the next item in harpoon",
      },
      {
        "<C-j>",
        function()
          require("harpoon.ui").nav_prev()
        end,
        desc = "Navigate to the previous item in harpoon",
      },
      {
        "<BS>",
        function()
          require("harpoon.ui").nav_prev()
        end,
        desc = "Navigate to the previous item in harpoon",
      },
    },
  },
}
