return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "tomorrow_night",
			},
			sections = {
				lualine_x = { "encoding", "filetype" }, --  removed 'fileformat'
				lualine_b = {
					{
						require("micropython_nvim").statusline,
						cond = package.loaded["micropython_nvim"] and require("micropython_nvim").exists,
					},
				},
			},
		})
	end,
}
--hello
