local M = {}

function M.sandbox()
  M.events = {}
  vim.api.nvim_buf_attach(0, false, {
    on_lines = function(...)
      table.insert(M.events, { ... })
    end,
  })
end

function M.see()
  print(dump(M.events))
end

function dump(o)
  -- let's try a change
  if type(o) == 'table' then
    local s = '{ '
    for k, v in pairs(o) do
      if type(k) ~= 'number' then
        k = '"' .. k .. '"'
      end
      s = s .. '[' .. k .. '] = ' .. dump(v) .. ','
    end
    return s .. '} '
  else
    return tostring(o)
  end
end

M.sandbox()
vim.keymap.set('n', '<leader>SS', M.see, { desc = 'sandbox' })

print 'this ran'

return M
