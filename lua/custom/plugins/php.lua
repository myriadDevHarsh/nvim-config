return {
  'tjdevries/php.nvim',
  config = function()
    require('php').setup {
      lsp = { enable = true },
      treesitter = { highlight = true },
    }
  end,
}
