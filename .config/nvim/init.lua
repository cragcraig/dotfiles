-- Lazy package manager (https://github.com/folke/lazy.nvim)
require("config.lazy")

-- My config
require("config.settings")
require("config.keymap")

-- Set basic options
vim.opt.nu = true -- Show line numbers
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.list = true
vim.opt.listchars = "tab:>-,trail:~,extends:>,precedes:<"
vim.opt.hlsearch = true -- Highlight search results
vim.opt.incsearch = true -- Live search as you type
vim.opt.mouse = "a" -- "a" enables mouse support
vim.opt.clipboard = "unnamedplus" -- Allow Neovim to use the system clipboard
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.smartcase = true -- Override ignorecase if search contains uppercase

-- Colorscheme
vim.opt.termguicolors = true
vim.cmd.colorscheme('gruvbox-material')

-- Configure Plugins

-- Visible indents
require("ibl").setup{
  indent = {
    char = "┊", -- character to use for the indent lines
  },
  scope = {
    enabled = true,
    show_start = false,
    show_end = false,
    char = "│",
  },
}
