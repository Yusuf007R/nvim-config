local map = vim.keymap.set


map({ 'n', 'i', 'v' }, '<C-s>', '<cmd>:w<CR>')

map('n', '<leader>ln', function()
  vim.o.relativenumber = not vim.o.relativenumber
end, {
  desc = "Toggle relative line numbers"
})
