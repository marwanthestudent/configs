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
			vim.lsp.config.lua_ls = {
				capabilities = capabilities,
			}
			vim.lsp.config.clangd = {
				cmd = {
					"/opt/homebrew/opt/llvm/bin/clangd",
					"--background-index",
					"--query-driver=/opt/homebrew/**/arm-none-eabi-*,/usr/local/**/arm-none-eabi-*",
				},
				init_options = {
					fallbackFlags = {
						"-std=c++23",
						"-I/Users/marwanabulebdeh/GpuRemoteDir/lab-0-getting-started-spr2026-marwanthestudent/third_party/libgputk/libgputk/include/",
						"-I/Users/marwanabulebdeh/cudaHeadersRemote",
						"-nocudainc",
						"-nocudalib",
						-- make CUDA function qualifiers harmless for parsing
						"-D__host__=",
						"-D__device__=",
						"-D__global__=",
						"-D__shared__=",
						"-D__align__(n)=",
						"-D__launch_bounds__(t, b)=",
					},
				},
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
			vim.lsp.enable({ "lua_ls", "clangd", "verible", "basedpyright", "marksman", "texlab" })

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
