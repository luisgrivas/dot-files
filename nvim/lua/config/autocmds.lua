-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch", -- Highlight group to use
			timeout = 200, -- Duration in milliseconds
		})
	end,
})
