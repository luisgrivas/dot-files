return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup({})
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Search Files' })
        vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Search by Grep' })
        vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = 'Search current word' })
        vim.keymap.set('n', '<leader>sd', builtin.builtin, { desc = 'Search Select Telescope' })
        vim.keymap.set('n', '<leader>/', function()
        -- You can pass additional configuration to Telescope to change the theme, layout, etc.
        builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
        end, { desc = '[/] Fuzzily search in current buffer]' })
      end
    }
