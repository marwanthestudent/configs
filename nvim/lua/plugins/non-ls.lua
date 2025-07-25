return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua, -- Lua
				null_ls.builtins.formatting.clang_format.with({ -- C/C++
					extra_args = { "--style={BasedOnStyle: llvm, BreakBeforeBraces: Attach}" },
				}),
				null_ls.builtins.formatting.black, -- Python
				null_ls.builtins.formatting.isort, -- Python
				null_ls.builtins.formatting.prettier.with({ -- Markdown
					filetypes = { "markdown" },
				}),
				null_ls.builtins.formatting.verible_verilog_format, --verilog/sysverilog
				-- Linters (only for langs without Treesitter linting)
				--null_ls.builtins.diagnostics.flake8,                   -- Python not workin due to conda/brew conflics maybe??
				null_ls.builtins.diagnostics.markdownlint, -- Markdown
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
