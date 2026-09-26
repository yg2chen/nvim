require('grapple').setup()

vim.keymap.set('n', '<leader>m', require('grapple').toggle_tags)

vim.keymap.set('n', '<leader>a', require('grapple').toggle)

vim.keymap.set('n', '<leader>j', '<cmd>Grapple select index=1<CR>')
vim.keymap.set('n', '<leader>k', '<cmd>Grapple select index=2<CR>')
vim.keymap.set('n', '<leader>l', '<cmd>Grapple select index=3<CR>')
vim.keymap.set('n', '<leader>;', '<cmd>Grapple select index=4<CR>')
