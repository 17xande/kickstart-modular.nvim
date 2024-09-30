return {
  'Exafunction/codeium.vim',
  event = 'BufEnter',
  config = function()
    -- vim.g.codeium_manual = true
    vim.keymap.set('i', '<C-g>', function()
      return vim.fn['codeium#Accept']()
    end, { expr = true, silent = true })

    -- vim.keymap.set('i', '<C-;>', function() return vim.fn['codeium#CycleCompletions'](0) end, { expr = true, silent = true })
    -- vim.keymap.set('i', '<C-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
    -- vim.keymap.set('i', '<C-x>', function()
    --   return vim.fn['codeium#Clear']()
    -- end, { expr = true, silent = true })
    vim.g.codeium_no_map_tab = true
  end,
}
