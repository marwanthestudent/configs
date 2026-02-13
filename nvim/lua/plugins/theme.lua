return {
	"navarasu/onedark.nvim",
	name = "onedark",
	priority = 1000,
	config = function()
		require("onedark").setup({
			style = "warmer",
            colors = {}, -- Override default colors
		})
		vim.cmd.colorscheme("onedark")
	end,
}




