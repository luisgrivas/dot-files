return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon.setup()
		vim.keymap.set("n", "<leader>ha", function()
			harpoon:list():add()
		end, { desc = "Add to Harpoon" })
		vim.keymap.set("n", "<leader>hh", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Toggle Harpoon Menu" })
		vim.keymap.set("n", "<leader>1", function()
			harpoon:list():select(1)
		end, { desc = "Go to Harpoon 1" })
		vim.keymap.set("n", "<leader>2", function()
			harpoon:list():select(2)
		end, { desc = "Go to Harpoon 2" })
		vim.keymap.set("n", "<C-p>", function()
			harpoon:list():prev()
		end, { desc = "Go to Previous Harpoon" })
		vim.keymap.set("n", "<C-n>", function()
			harpoon:list():next()
		end, { desc = "Go to Next Harpoon" })
	end,
}
