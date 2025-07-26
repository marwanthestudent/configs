return {
   "navarasu/onedark.nvim",
   -- "catppuccin/nvim",
   name = "onedark",
   priority = 1000,
   config = function()
      --      require("catppuccin").setup({
      --         flavour = "mocha", -- latte, frappe, macchiato, mocha
      --         color_overrides = {
      --            mocha = {
      --               base = "#2e2e33", -- main editor background
      --               mantle = "#2a2a2f", -- sidebars, panels
      --               crust = "#252529", -- statusline, floating windows
      --               text = "#e6e6e6",
      --            },
      --         },
      --      })

      require("onedark").setup({
         style = "warm",
      })
      vim.cmd.colorscheme("onedark")
   end,
}
