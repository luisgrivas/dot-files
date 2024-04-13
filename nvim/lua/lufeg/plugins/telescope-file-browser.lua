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
                    hijack_netrw = true,
                    hidden = { file_browser = true, folder_browser = true },
                    respect_gitignore = false,
                }
            }
        }
    vim.keymap.set("n", "<space>t", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { desc = 'Telescope File Browser' })
    require("telescope").load_extension("file_browser")
    end,
}
