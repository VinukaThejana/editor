return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      ---@type table<string, conform.FormatterUnit[]>
      formatters_by_ft = {
        go = { "goimports", "gofumpt" },
        dockerfile = { "hadolint" },
        typescriptreact = { "biome" },
        python = { "ruff_format" },
      },
      ---@type table<string, conform.FormatterConfigOverride|fun(bufnr: integer): nil|conform.FormatterConfigOverride>
      formatters = {
        injected = { options = { ignore_errors = true } },
        dprint = {
          condition = function(ctx)
            return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
          end,
        },

        pmd = {
          command = "pmd",
          condition = function(ctx)
            return vim.fs.find({ "build.gradle" }, { path = ctx.filename, upward = true })[1]
          end,
          args = {
            "--rulesets",
            "/Users/vinukakodituwakku/projects/third-party/pmd/pmd-java/src/main/resources/category/java/bestpractices.xml",
          },
        },
      },
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
          nls.builtins.diagnostics.tidy.with({
            filetypes = { "html", "xml" },
          }),
          -- nls.builtins.formatting.biome.with({
          --   filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact", "json", "jsonc" },
          --   arg = { "format", "--write", "$FILENAME" },
          -- }),

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
