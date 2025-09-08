return {
  "lewis6991/spaceless.nvim",
  event = { "InsertEnter", "TextChanged", "BufWritePre" },
  opts = {},
  config = function(_, opts)
    require("spaceless").setup(opts)

    -- Strip all trailing whitespace on save
    vim.api.nvim_create_autocmd("BufWritePre", {
      callback = function()
        local save_cursor = vim.fn.getpos(".")      -- save cursor position
        vim.cmd([[%s/\s\+$//e]])                    -- remove trailing whitespace in entire buffer
        vim.fn.setpos(".", save_cursor)             -- restore cursor
      end,
    })
  end,
}
