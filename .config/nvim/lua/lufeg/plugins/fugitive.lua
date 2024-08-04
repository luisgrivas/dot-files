return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set('n', '<leader>gs', '<cmd>Git<CR>', { desc = 'Git status' })
        vim.keymap.set('n', '<leader>ga', '<cmd>Git add %<CR>', { desc = 'Git add' })
        vim.keymap.set('n', '<leader>gc', '<cmd>Git commit<CR>', { desc = 'Git commit' })
        vim.keymap.set('n', '<leader>gd', '<cmd>Git diff<CR>', { desc = 'Git diff' })
        vim.keymap.set('n', '<leader>gl', '<cmd>Git pull<CR>', { desc = 'Git log' })
        vim.keymap.set('n', '<leader>gp', '<cmd>Git push<CR>', { desc = 'Git push' })
    end
}
