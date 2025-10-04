return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        {
            "<leader>ff",
            ":Telescope find_files<CR>",
            mode = "n",
            desc = "Find files"
        },
        {
            "<leader>fe",
            ":Telescope live_grep<CR>",
            mode = "n",
            desc = "Live grep"
        },
    }
}
