return {
	"Vigemus/iron.nvim",
	config = function()
		local iron = require("iron.core")

		iron.setup({
			config = {
				scratch_repl = true,
				repl_definition = {
					sh = {
						command = { "zsh" },
					},
					python = {
						command = { "ipython", "--no-autoindent" },
						format = require("iron.fts.common").bracketed_paste_python,
					},
				},
				repl_open_cmd = require("iron.view").split.vertical.botright(70),
			},
			keymaps = {
				send_motion = "<space>rm",
				visual_send = "<space>rv",
				send_file = "<space>rf",
				send_line = "<space>rl",
				send_paragraph = "<space>rp",
				cr = "<space>s<cr>",
				interrupt = "<space>r<space>",
				exit = "<space>rq",
				clear = "<space>rcl",
			},
			highlight = {
				italic = true,
			},
			ignore_blank_lines = true,
		})

		vim.keymap.set("n", "<space>is", "<cmd>IronRepl<cr>")
		vim.keymap.set("n", "<space>ir", "<cmd>IronRestart<cr>")
		vim.keymap.set("n", "<space>if", "<cmd>IronFocus<cr>")
		vim.keymap.set("n", "<space>ih", "<cmd>IronHide<cr>")
	end,
}
