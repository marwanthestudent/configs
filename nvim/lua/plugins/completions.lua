return {
   {
      "hrsh7th/cmp-nvim-lsp",
   },
   {
      "L3MON4D3/LuaSnip",
      dependencies = {
         "saadparwaiz1/cmp_luasnip",
         "rafamadriz/friendly-snippets",
      },
   },
   {
      "hrsh7th/nvim-cmp",
      config = function()
         local cmp = require("cmp")
         require("luasnip.loaders.from_vscode").lazy_load()
         cmp.setup({
            snippet = {
               --snippet engine
               expand = function(args)
                  require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
               end,
            },
            window = {
               completion = cmp.config.window.bordered(),
               documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
               ["<C-b>"] = cmp.mapping.scroll_docs(-4),
               ["<C-f>"] = cmp.mapping.scroll_docs(4),
               ["<C-Space>"] = cmp.mapping.complete(),
               ["<C-j>"] = cmp.mapping.select_next_item(),
               ["<C-k>"] = cmp.mapping.select_prev_item(),
               ["<C-e>"] = cmp.mapping.abort(),
               ["<CR>"] = cmp.mapping.confirm({ select = true }),
            }),
            sources = cmp.config.sources({
               --{ name = "nvim_lsp" },
               { name = "nvim_lsp" }, -- LSP snippets.
               { name = "luasnip" }, -- For luasnip users.
            }, {
               { name = "buffer" },
            }),
         })
      end,
   },
}
