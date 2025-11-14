return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"bash",
				"c",
				"lua",
				"html",
				"javascript",
				"markdown",
				"markdown_inline",
				"vim",
				"vimdoc",
				"python",
				"regex",
				"typescript",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
