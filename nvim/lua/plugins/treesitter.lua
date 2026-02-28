-- return {
-- 	{
-- 		"nvim-treesitter/nvim-treesitter",
-- 		-- lazy = false,
-- 		build = ":TSUpdate",
-- 		config = function()
-- 			local config = require("nvim-treesitter.configs")
-- 			config.setup({
-- 				auto_install = true,
-- 				ensure_installed = { "vim", "lua", "cpp", "c", "markdown", "latex", "python" },
-- 				highlight = { enable = true },
-- 				indent = { enable = true },
-- 			})
-- 		end,
-- 	},
-- }
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter")
    configs.setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "markdown", "markdown_inline" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
