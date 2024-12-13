return {
  {
    dir = '~/dev/nvim/actionlogger.nvim',
    config = function()
      require('actionlogger').setup {
        log_file = '/home/alex/nvim_actions.log',
      }
    end,
  },
}
