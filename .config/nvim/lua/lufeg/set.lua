vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>') -- Clear search on escape

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes:3'
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.have_nerd_font = true

vim.opt.mouse = 'a' -- Enable mouse support

vim.opt.showmode = false -- Don't show mode

vim.opt.clipboard = 'unnamedplus' -- Use system clipboard

vim.opt.breakindent = true -- Break indent

vim.opt.splitright = true -- Split right

vim.o.cursorline = false -- currently not working

-- undos
vim.opt.undofile = true
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
