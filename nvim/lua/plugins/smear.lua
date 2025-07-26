return {
   "sphamba/smear-cursor.nvim",
   config = function()
      require("smear_cursor").setup({
       stiffness = 0.7,                      -- 0.6      [0, 1]
       trailing_stiffness = 0.5,             -- 0.4      [0, 1]
       stiffness_insert_mode = 0.7,          -- 0.5      [0, 1]
       trailing_stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
       damping = 0.7,                        -- 0.65     [0, 1]
       damping_insert_mode = 0.75,            -- 0.7      [0, 1]
       distance_stop_animating = 0.35,        -- 0.1      > 0
       time_interval = 14,
      })
   end,
}
