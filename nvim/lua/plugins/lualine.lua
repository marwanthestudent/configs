return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "gruvbox_dark",
				component_separators = "",
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_x = { "filetype" },
				lualine_b = {
						"diff",
				},
			},
		})
	end,
}

