
  return{
      { "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate" },
      {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      }
      },
      config = function()
         local config = require("nvim-treesitter.configs")
         config.setup({
         --ensure_installed = {"lua","cpp","c","verilog","python","markdown","markdown_inline"},
         auto_install = true,
         highlight = {enable = true},
         indent = {enable = true},
         })
      end
  }
