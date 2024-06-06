return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local nvimtree = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      filters = {
        dotfiles = false,
        custom = {".git", "DS_Store"},
      },
    git = {
        ignore = false
    },
    actions = {
        open_file = {
            quit_on_open = true
        }
    }
    })
    vim.keymap.set('n', '<leader>ee', ':NvimTreeToggle<CR>', {desc = 'Toggle NvimTree'})
    vim.keymap.set('n', '<leader>ef', ':NvimTreeFindFileToggle<CR>', {desc = 'Toggle NvimTree with current file'})
  end,
}
