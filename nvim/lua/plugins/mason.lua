return {
   {
      "mason-org/mason.nvim",
      config = function()
         require("mason").setup()
      end
   },
   {
      "mason-org/mason-lspconfig.nvim",
      config = function()
         require("mason-lspconfig").setup({
            ensure_installed = {"lua_ls",
            "clangd",
            "verible",
            "svlangserver",
            "pyright",
            "marksman",
            "texlab",
            }
         })
      end
   },{
      "neovim/nvim-lspconfig",
      config = function()
         local lspconfig = require("lspconfig")
         lspconfig.clangd.setup({})
         lspconfig.verible.setup({})
         lspconfig.svlangserver.setup({})
         lspconfig.pyright.setup({})
         lspconfig.marksman.setup({})
         lspconfig.texlab.setup({})

         vim.keymap.set('n','K', vim.lsp.buf.hover, {})
         vim.keymap.set('n','gd',vim.lsp.buf.definition,{})
         vim.keymap.set({'n','v'},'<leader>ca',vim.lsp.buf.code_action,{})


         vim.diagnostic.config({
           virtual_text = true,    -- show inline error/warning text
           signs = true,           -- show gutter signs
           update_in_insert = false,
           underline = true,
           severity_sort = true,
           float = {
             border = "rounded",
             source = "always",
           },
         })
         vim.opt.signcolumn = "yes"
      end
     },
}
