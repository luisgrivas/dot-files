return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require("telescope").setup({
			defaults = {
                preview = {
                    filesize_limit = 0.1,
                },
				file_ignore_patterns = {
					"node_modules",
					".git/",
					"dist",
					"build",
					"%.lock",
					"%.png",
					"%.jpg",
					"%.jpeg",
					"%.gif",
					"%.ipynb",
                    "%.drawio"
				},
			},
		})

        local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Search Files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Search by Grep" })
		vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "Search current word" })
		vim.keymap.set("n", "<leader>fd", builtin.builtin, { desc = "Search Select Telescope" })
    end
}
