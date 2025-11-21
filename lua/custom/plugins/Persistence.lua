return {
  'folke/persistence.nvim',
  event = 'BufReadPre',
  opts = {},
  config = function(_, opts)
    require('persistence').setup(opts)

    local map = vim.keymap.set
    local persistence = require 'persistence'

    map('n', '<leader>qs', function()
      persistence.load()
    end, { desc = 'Load session for current dir' })
    map('n', '<leader>qS', function()
      persistence.select()
    end, { desc = 'Select session to load' })
    map('n', '<leader>ql', function()
      persistence.load { last = true }
    end, { desc = 'Load last session' })
    map('n', '<leader>qd', function()
      persistence.stop()
    end, { desc = 'Stop persistence' })
  end,
}
