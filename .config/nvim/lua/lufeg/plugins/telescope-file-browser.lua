return {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim"
    },
    config = function()
        local fb_actions = require "telescope._extensions.file_browser.actions"
        require("telescope").setup {
            extensions = {
                file_browser = {
                    hijack_netrw = false,
                    hidden = { file_browser = true, folder_browser = true },
                    respect_gitignore = false,
                    initial_mode = 'normal',
                    grouped = true,
                }
            }
        }
    vim.keymap.set("n", "<space>t", function()
        require("telescope").extensions.file_browser.file_browser()
    end)
    end,
}
