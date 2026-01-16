-- https://github.com/nvim-treesitter/nvim-treesitter
return {
  "nvim-treesitter/nvim-treesitter",
  -- Instruct lazy.nvim to run the TSUpdate command after installation/updates
  build = ":TSUpdate",
  -- Pass options to the setup function
  opts = {
    -- Automatically install parsers
    auto_install = true,
    -- List of languages to ensure are installed
    ensure_installed = {
      "awk",
      "bash",
      "c",
      "cpp",
      "diff",
      "dot",
      "fish",
      "go",
      "html",
      "kotlin",
      "javascript",
      "json",
      "lua",
      "markdown",
      "proto",
      "python",
      "query",
      "rust",
      "vim",
      "vimdoc",
    },
    -- Enable specific features
    highlight = { enable = true }, -- Enable syntax highlighting
    indent = { enable = true },    -- Enable smart code indentation
    folds = { enable = true },      -- Enable folding support
  },
  -- Manually call the setup function with the options provided in 'opts'
  config = function(_, opts)
    require("nvim-treesitter.config").setup(opts)
  end,
}
