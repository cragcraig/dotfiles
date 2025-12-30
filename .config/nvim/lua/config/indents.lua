function set_indent(size, use_spaces)
    -- Default to using spaces if not specified
    if use_spaces == nil then use_spaces = true end

    vim.opt.tabstop = size       -- Number of spaces that a <Tab> in the file counts for
    vim.opt.shiftwidth = size    -- Number of spaces to use for each step of (auto)indent
    vim.opt.softtabstop = size   -- Number of spaces that a <Tab> counts for while editing
    vim.opt.expandtab = use_spaces -- Use spaces instead of tabs
end
