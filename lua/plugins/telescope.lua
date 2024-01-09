return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      {
        "<leader>ff",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
      -- Add a keymap to find git files
      {
        "<leader><leader>",
        function()
          require("telescope.builtin").git_files()
        end,
        desc = "Find git files",
      },
      -- Add a keymap to show all keymaps
      {
        "<leader>sk",
        function()
          require("telescope.builtin").keymaps()
        end,
        desc = "Show all keymaps",
      },
      -- Add a keymap to switch buffers
      {
        "<tab>",
        function()
          require("telescope.builtin").buffers()
        end,
        desc = "Show all active buffers",
      },
      -- Add a keymap to live grep
      {
        "<leader>fw",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Live grep",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },

  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },

  -- Tmux sessionizer
  {
    "sanathks/workspace.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      local workspace = require("workspace")
      vim.keymap.set("n", "<leader><space>l", workspace.tmux_sessions)
      require("workspace").setup({
        workspaces = {
          { name = "Personal", path = "~/projects/vinuka/", keymap = { "<leader><space>p" } },
          { name = "BBI", path = "~/projects/bakesbyish/", keymap = { "<leader><space>b" } },
          { name = "Reference", path = "~/projects/Downloads", keymap = { "<leader><space>r" } },
        },
      })
    end,
  },
}
