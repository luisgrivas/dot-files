return {
	"lewis6991/gitsigns.nvim",
	opts = {},
	config = function()
		require("gitsigns").setup({
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		})
		vim.keymap.set(
			"n",
			"<leader>gb",
			":Gitsigns toggle_current_line_blame<CR>",
			{ desc = "Toggle current line blame" }
		)
		vim.keymap.set("n", "<leader>ga", ":Gitsigns stage_hunk<CR>", { desc = "Stage hunk" })
		vim.keymap.set("n", "<leader>gA", ":Gitsigns stage_buffer<CR>", { desc = "Stage buffer" })
		vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", { desc = "Reset hunk" })
		vim.keymap.set("n", "<leader>gR", ":Gitsigns reset_buffer<CR>", { desc = "Reset buffer" })
        vim.keymap.set("n", "<leader>gt", ":Gitsigns setqflist target=buffer<CR>", { desc = "Set quickfix list to buffer" })
        vim.keymap.set("n", "<leader>gT", ":Gitsigns setqflist<CR>", { desc = "Set quickfix list to all" })
	end,
}
