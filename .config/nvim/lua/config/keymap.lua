-- Function to create keymaps
local function keymap(mode, lhs, rhs, opts)
  -- Default options
  local options = { noremap = true, silent = true }
  if opts then
    -- Extend default options with user 'opts', forcing the user's values to override defaults
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Ctrl + {hjkl} to move between windows
keymap('n', '<C-h>', '<C-w>h')
keymap('n', '<C-j>', '<C-w>j')
keymap('n', '<C-k>', '<C-w>k')
keymap('n', '<C-l>', '<C-w>l')
keymap('i', '<C-h>', '<C-w>h')
keymap('i', '<C-j>', '<C-w>j')
keymap('i', '<C-k>', '<C-w>k')
keymap('i', '<C-l>', '<C-w>l')
