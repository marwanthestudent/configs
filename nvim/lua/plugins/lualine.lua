return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            options = {
                theme = "everforest",
                
            },
            sections = {
                lualine_x = { "encoding", "filetype" }, --  removed 'fileformat'
            },
        })
    end,
}
