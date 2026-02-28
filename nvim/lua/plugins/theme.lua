return {
	"navarasu/onedark.nvim",
	name = "onedark",
	priority = 1000,
	config = function()
		require("onedark").setup({
			style = "warmer",

			-- colors = {
			--              muted_purple = '#39AAAA',
			--          }, -- Override default colors
			-- highlights = {
			--              ["@lsp.type.macro"] = {fg = '$muted_purple'},
			--              ["@lsp.type.property"] = {fg = '$muted_purple'},
			--
			--          }, -- Override highlight groups
		})
		vim.cmd.colorscheme("onedark")
	end,
}
