return {
  {
    dir = '~/dev/nvim/track.nvim',
    config = function()
      require('track').setup {
        enabled = true,
        log_file = '/home/alex/nvim_tracks.json',
        debounce_ms = 1000,
      }
    end,
  },
}
