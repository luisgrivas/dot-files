return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			on_highlights = function(highlights, colors)
				highlights["@string.documentation"] = { fg = colors.comment }
			end,
		})
		vim.cmd([[colorscheme tokyonight-night]])
	end,
}
