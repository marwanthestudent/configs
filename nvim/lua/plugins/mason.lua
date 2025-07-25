return {
   {
      "mason-org/mason.nvim",
      config = function()
         require("mason").setup()
      end,
   },
   {
      "mason-org/mason-lspconfig.nvim",
      config = function()
         require("mason-lspconfig").setup({
            ensure_installed = {
               "lua_ls",
               "clangd",
               "verible",
               "svlangserver",
               "pyright",
               "marksman",
               "texlab",
            },
         })
      end,
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         local lspconfig = require("lspconfig")
         local capabilities = require("cmp_nvim_lsp").default_capabilities()

         lspconfig.lua_ls.setup({
            capabilities = capabilities,
         })
         lspconfig.clangd.setup({
            capabilities = capabilities,
         })
         lspconfig.verible.setup({
            capabilities = capabilities,
         })
         lspconfig.svlangserver.setup({
            capabilities = capabilities,
         })
         lspconfig.pyright.setup({
            capabilities = capabilities,
         })
         lspconfig.marksman.setup({
            capabilities = capabilities,
         })
         lspconfig.texlab.setup({
            capabilities = capabilities,
         })

         vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
         vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
         vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

         vim.diagnostic.config({
            virtual_text = true, -- show inline error/warning text
            signs = true, -- show gutter signs
            update_in_insert = false,
            underline = true,
            severity_sort = true,
            float = {
               border = "rounded",
               source = "always",
            },
         })
         local signs = {
            Error = "",
            Warn = "",
            Hint = " ",
            Info = "",
         }
         for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
         end
         vim.opt.signcolumn = "yes"
      end,
   },
}
