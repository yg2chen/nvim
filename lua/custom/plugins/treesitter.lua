local treesitter = require 'nvim-treesitter'
local treesitter_context = require 'treesitter-context'
treesitter.setup()
treesitter_context.setup {
    -- Autoinstall languages that are not installed
    auto_install = true,
    highlight = {
        enable = true,
        -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
        --  If you are experiencing weird indenting issues, add the language to
        --  the list of additional_vim_regex_highlighting and disabled languages for indent.
        additional_vim_regex_highlighting = { 'ruby' },
    },
    indent = { enable = true, disable = { 'ruby' } },
}

vim.keymap.set('n', '<leader>tc', function()
    require('treesitter-context').toggle()
end, { desc = '[T]oggle [C]ontext' })

vim.keymap.set('n', '[s]', function()
    require('treesitter-context').go_to_context(vim.v.count1)
end, { desc = 'Jump to context [s]cope' })

treesitter.install { 'bash', 'c', 'cpp', 'python', 'diff', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'vim', 'vimdoc' }
