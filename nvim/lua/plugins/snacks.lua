return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		bigfile = { enabled = true },
		dashboard = { enabled = true },
		explorer = { enabled = true },
		indent = { enabled = true },
		input = { enabled = true },
		picker = { enabled = true, sources = { explorer = { layout = { auto_hide = { "input" } } } } },
		notifier = { enabled = false },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = false },
		statuscolumn = { enabled = false },
		words = { enabled = true },
	},
	keys = {
		{
			"<leader>ee",
			function()
				Snacks.explorer()
			end,
			desc = "File Explorer",
		},
		-- {
		-- 	"<leader><space>",
		-- 	function()
		-- 		Snacks.picker.smart()
		-- 	end,
		-- 	desc = "Smart Find Files",
		-- },
	},
}
