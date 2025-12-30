--- Helper functions ---

-- Set default indentation (GLOBAL)
local function set_indent(size, use_spaces)
  -- Default to true if not provided
  local expand = true
  if use_spaces == false then expand = false end

  -- Use vim.opt_local to set it for the specific buffer/window if needed,
  -- but vim.opt sets the global default.

  vim.opt.tabstop = size       -- Number of spaces that a <Tab> in the file counts for
  vim.opt.shiftwidth = size    -- Number of spaces to use for each step of (auto)indent
  vim.opt.softtabstop = size   -- Number of spaces that a <Tab> counts for while editing
  vim.opt.expandtab = use_spaces -- Use spaces instead of tabs
end

-- Set BUFFER-LOCAL indentation (for autocmds)
local function set_local_indent(size, use_spaces)
  -- Default to true if not provided
  local expand = true
  if use_spaces == false then expand = false end

  -- Use vim.opt_local to set it for the specific buffer/window if needed,
  -- but vim.opt sets the global default.

  vim.opt_local.tabstop = size       -- Number of spaces that a <Tab> in the file counts for
  vim.opt_local.shiftwidth = size    -- Number of spaces to use for each step of (auto)indent
  vim.opt_local.softtabstop = size   -- Number of spaces that a <Tab> counts for while editing
  vim.opt_local.expandtab = use_spaces -- Use spaces instead of tabs
end


--- Global Defaults ---
set_indent(4, true)


--- Filetype-specific overrides ---

-- We create a group to prevent duplicating autocmds if you reload the file
local indent_group = vim.api.nvim_create_augroup("CustomIndent", { clear = true })

-- Web Dev & Lua: 2 spaces
vim.api.nvim_create_autocmd("FileType", {
  group = indent_group,
  pattern = { "lua", "javascript", "typescript", "react", "html", "css", "json" },
  callback = function()
    -- Since we are inside a callback, let's set it local to the buffer
    set_local_indent(2, true)
  end,
})

-- Systems & Backend: 4 spaces
-- (unnecessary since these are the default settings, but let's be explicit)
vim.api.nvim_create_autocmd("FileType", {
    group = indent_group,
    pattern = { "python", "rust", "c", "cpp", "go" },
    callback = function()
        set_local_indent(4, true)
    end,
})
