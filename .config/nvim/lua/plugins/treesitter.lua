-- https://github.com/nvim-treesitter/nvim-treesitter
return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',

  config = function()
    require('nvim-treesitter').install({
      'go',
      'rust',
      'json',
      'html',
      'css',
      'markdown',
      'regex',
      'python',
      'lua',
      'vim',
      'vimdoc',
      'c',
    })

    vim.api.nvim_create_autocmd('FileType', {
      pattern = {
        'go',
        'rust',
        'python',
        'c',
        'vim',
        'lua',
        'markdown',
        'json',
        'html',
      },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
