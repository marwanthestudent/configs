return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      color_overrides = {
        mocha = {
          base = "#22272e",  -- changes the default background color
          mantle = "#22272e",
          crust = "#1e222a",
          text = "#e6e6e6",
        },
      },
    })
    vim.cmd.colorscheme("catppuccin")
   end
}
