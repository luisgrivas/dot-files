return {
	"nvim-lualine/lualine.nvim",
	-- event = "ColorScheme",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			component_separators = "",
			section_separators = "",
			sections = {
				lualine_a = { "mode" },
				lualine_b = { { "filename", file_status = true, path = 1 } },
				lualine_c = { "diagnostics" },
				lualine_x = { "branch" },
				lualine_y = { "diff" },
				lualine_z = { "location", "progress" },
			},
		})
	end,
}
