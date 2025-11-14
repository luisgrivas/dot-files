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
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>") -- Clear search on escape

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "auto:2"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.have_nerd_font = true

vim.opt.mouse = "a" -- Enable mouse support

vim.opt.showmode = false -- Don't show mode

vim.opt.clipboard = "unnamedplus" -- Use system clipboard

vim.opt.breakindent = true -- Break indent

vim.opt.splitright = true -- Split right

vim.o.cursorline = true

vim.opt.cmdheight = 0 -- Command line height

vim.g.markdown_recommended_style = 0
-- undos
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.g.clipboard = {
	name = "win32yank",
	copy = {
		["+"] = "/usr/local/bin/win32yank.exe -i --crlf",
		["*"] = "/usr/local/bin/win32yank.exe -i --crlf",
	},
	paste = {
		["+"] = "/usr/local/bin/win32yank.exe -o --lf",
		["*"] = "/usr/local/bin/win32yank.exe -o --lf",
	},
	cache_enabled = 0,
}
