
   return {
      {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
         local builtin = require('telescope.builtin')
         vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
         vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
         require('telescope').setup{
            pickers = {
            ["live_grep"] = {
            disable_devicons = true,
            previewer = true,
            },
            }
         }
      end
      },
      {
         'nvim-telescope/telescope-ui-select.nvim',
         config = function()
            require("telescope").setup {
               extensions = {
                  ["ui-select"] = {
                     require("telescope.themes").get_dropdown {
                        require("telescope").load_extension("ui-select")
                     }
                  }
               }
            }
            require("telescope").load_extension("ui-select")
            end
      },
}
