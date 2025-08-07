return {
	"romgrk/barbar.nvim",
	version = "^1.0.0",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	config = function()
		require("barbar").setup({
			animation = false,
			-- You can add more config here as needed
		})
		local map = vim.keymap.set
		local opts = { noremap = true, silent = true }

		-- Buffer navigation
		-- map("n", "<C-w>h", "<Cmd>BufferPrevious<CR>", opts)
		-- map("n", "<C-w>l", "<Cmd>BufferNext<CR>", opts)
		-- Re-order buffers
		-- map("n", "<C-<>", "<Cmd>BufferMovePrevious<CR>", opts)
		-- map("n", "<C->>", "<Cmd>BufferMoveNext<CR>", opts)
      -- you can pin buffers but I don't see the use now?
		-- Goto buffer in position...
		map("n", "<C-1>", "<Cmd>BufferGoto 1<CR>", opts)
		map("n", "<C-2>", "<Cmd>BufferGoto 2<CR>", opts)
		map("n", "<C-3>", "<Cmd>BufferGoto 3<CR>", opts)
		map("n", "<C-4>", "<Cmd>BufferGoto 4<CR>", opts)
		map("n", "<C-5>", "<Cmd>BufferGoto 5<CR>", opts)
		map("n", "<C-6>", "<Cmd>BufferGoto 6<CR>", opts)
		map("n", "<C-7>", "<Cmd>BufferGoto 7<CR>", opts)
		map("n", "<C-8>", "<Cmd>BufferGoto 8<CR>", opts)
		map("n", "<C-9>", "<Cmd>BufferGoto 9<CR>", opts)
		map("n", "<C-0>", "<Cmd>BufferLast<CR>", opts)
		-- Close buffer
		map("n", "<C-q>", "<Cmd>BufferClose<CR>", opts)
	end,
}
