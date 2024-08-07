return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup({})
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Search Files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Search by Grep' })
        vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = 'Search current word' })
        vim.keymap.set('n', '<leader>fd', builtin.builtin, { desc = 'Search Select Telescope' })

        vim.keymap.set("n", "gd", builtin.lsp_definitions, { desc = 'Go to definition' })
        vim.keymap.set("n", "gr", builtin.lsp_references, { desc = 'Go to references' })
        vim.keymap.set("n", "gi", builtin.lsp_implementations, { desc = 'Go to implementation' })

        vim.keymap.set('n', '<leader>/', function()
        -- You can pass additional configuration to Telescope to change the theme, layout, etc.
        builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
        end, { desc = '[/] Fuzzily search in current buffer]' })
      end
    }
