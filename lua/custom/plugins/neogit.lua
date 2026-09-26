local neogit = require 'neogit'
neogit.setup {}

-- Wrap in a function to pass additional arguments
vim.keymap.set('n', '<leader>gs', function()
    neogit.open { kind = 'split' }
end, { desc = 'Open Neogit UI' })
