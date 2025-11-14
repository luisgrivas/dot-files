return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			filters = {
				dotfiles = false,
				custom = { "^.git$", ".DS_Store" },
			},
			view = { adaptive_size = true },
			renderer = {
				indent_markers = { enable = true },
			},
			git = {
				ignore = false,
			},
			actions = {
				open_file = {
					quit_on_open = true,
					window_picker = { enable = false },
				},
			},
		})
		vim.keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
		vim.keymap.set("n", "<leader>ef", ":NvimTreeFindFileToggle<CR>", { desc = "Toggle NvimTree with current file" })
	end,
}
