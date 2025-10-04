return {
	"lewis6991/gitsigns.nvim",
	config = function()
		local gitsigns = require("gitsigns")
		gitsigns.setup({
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		})
		vim.keymap.set("n", "<leader>ga", gitsigns.stage_hunk, { desc = "Stage hunk" })
		vim.keymap.set("n", "<leader>gr", gitsigns.reset_hunk, { desc = "Reset hunk" })
		vim.keymap.set("n", "<leader>gA", gitsigns.stage_buffer, { desc = "Stage buffer" })
		vim.keymap.set("n", "<leader>gR", gitsigns.reset_buffer, { desc = "Reset buffer" })
	end,
}
