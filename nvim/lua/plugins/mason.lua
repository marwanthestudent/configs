return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"verible",
					--               "svlangserver",
					"pyright",
					"marksman",
					"texlab",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Replace the old API with the new one
			vim.lsp.config.lua_ls = {
				capabilities = capabilities,
			}
			vim.lsp.config.clangd = {
				capabilities = capabilities,
			}
			vim.lsp.config.verible = {
				capabilities = capabilities,
			}
			-- vim.lsp.config.svlangserver = {
			--   capabilities = capabilities,
			-- }
			vim.lsp.config.pyright = {
				capabilities = capabilities,
			}
			vim.lsp.config.marksman = {
				capabilities = capabilities,
			}
			vim.lsp.config.texlab = {
				capabilities = capabilities,
			}

			-- Start servers automatically
			vim.lsp.enable({ "lua_ls", "clangd", "verible", "pyright", "marksman", "texlab" })

			-- Keymaps
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

			-- Diagnostics
			vim.diagnostic.config({
				virtual_text = true,
				signs = {
					text = {
						[vim.diagnostic.severity.ERROR] = "",
						[vim.diagnostic.severity.WARN] = "",
						[vim.diagnostic.severity.HINT] = "",
						[vim.diagnostic.severity.INFO] = "",
					},
				},
				underline = true,
				update_in_insert = false,
				severity_sort = true,
				float = { border = "rounded", source = "always" },
			})
			vim.opt.signcolumn = "yes"
		end,
	},
}
