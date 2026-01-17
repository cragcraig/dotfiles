return {
  'justinmk/vim-sneak',
  init = function()
    -- Enable label mode for hints (e.g., pressing 's' followed by 2 chars, then 'a', 'b', etc. for matches)
    vim.g.sneak_label = 1
    
    -- Other potential configurations can be set here:
    -- Change the default sneak key from 's' to something else (e.g., 'z')
    -- vim.g.sneak_leader = 'z' 
    
    -- Disable the default 's' and 'S' mappings if you want to define your own
    -- vim.g.sneak_no_maps = 1 
  end,
  -- Set to `lazy = false` if you want it loaded on startup.
  -- Otherwise, lazy.nvim automatically loads it on demand (e.g., when a keymap using it is pressed, if you define one).
}
