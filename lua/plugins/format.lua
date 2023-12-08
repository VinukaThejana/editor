return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    ---@type table<string, conform.FormatterUnit[]>
    formatters_by_ft = {},
    -- The options you set here will be merged with the builtin formatters.
    -- You can also define any custom formatters here.
    ---@type table<string, conform.FormatterConfigOverride|fun(bufnr: integer): nil|conform.FormatterConfigOverride>
    formatters = {
      injected = { options = { ignore_errors = true } },
      -- # Example of using dprint only when a dprint.json file is present
      dprint = {
        condition = function(ctx)
          return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
        end,
      },
      --
      -- # Example of using shfmt with extra args
      -- shfmt = {
      --   prepend_args = { "-i", "2", "-ci" },
      -- },
    },
  },

  {
    "nvimtools/none-ls.nvim",
    event = "BufReadPre",
    dependencies = { "mason.nvim" },
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          -- Webdev
          nls.builtins.diagnostics.tsc.with({
            filetypes = { "typescript", "typescriptreact" },
          }),
          nls.builtins.diagnostics.tidy.with({
            filetypes = { "html", "xml" },
          }),

          -- YAML config files
          nls.builtins.diagnostics.cfn_lint.with({
            filetypes = { "yaml" },
          }),

          -- Golang
          nls.builtins.diagnostics.revive.with({
            filetypes = { "go" },
          }),
          nls.builtins.code_actions.gomodifytags.with({
            filetypes = { "go" },
          }),

          -- Github Actions
          nls.builtins.diagnostics.actionlint.with({
            filetypes = { "yaml" },
          }),
        },
      }
    end,
  },
}
