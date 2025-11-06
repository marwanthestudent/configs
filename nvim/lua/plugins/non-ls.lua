return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua.with({
          extra_args = { "--indent-width", "4" },
        }),
        null_ls.builtins.formatting.clang_format.with({
          extra_args = {
            "--style={BasedOnStyle: llvm, BreakBeforeBraces: Attach, TabWidth: 4, IndentWidth: 4}",
          },
        }),
        null_ls.builtins.formatting.black.with({
          extra_args = { "--line-length", "88" },
        }),
        null_ls.builtins.formatting.isort.with({
          extra_args = { "--profile", "black" },
        }),
        null_ls.builtins.formatting.prettier.with({
          filetypes = { "markdown" },
          extra_args = { "--tab-width", "4" },
        }),
        null_ls.builtins.formatting.verible_verilog_format.with({
          extra_args = { "--indentation_spaces", "4" },
        }),
        null_ls.builtins.diagnostics.markdownlint,
      },
    })

    vim.keymap.set("n", "<leader>gf", function()
      vim.lsp.buf.format({
        async = true,
        filter = function(client)
          return client.name == "null-ls"
        end,
      })
    end, { desc = "Format buffer with null-ls" })
  end,
}
