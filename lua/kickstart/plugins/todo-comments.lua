-- Highlight todo, notes, etc in comments
return {
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      {
        '<leader>]t',
        function()
          require('todo-comments').jump_next()
        end,
        desc = 'Next Todo comment',
      },
      {
        '<leader>[t',
        function()
          require('todo-comments').jump_prev()
        end,
        desc = 'Previous Todo comment',
      },
      {
        '<leader>st',
        '<cmd>TodoTelescope<cr>',
        desc = 'Search Todos in Telescope',
      },
    },
    opts = { signs = true },
  },
}
-- vim: ts=2 sts=2 sw=2 et
