return {
    {
        "folke/tokyonight.nvim",
        name = "tokyonight",
        lazy = false,
        priority = 1000,
      config = function()
        vim.cmd("colorscheme tokyonight")
        require("tokyonight").setup({
            style = "moon",
            transparent = true
        })
        require("tokyonight").load()
        end
    },
    {
        'navarasu/onedark.nvim',
        config = function()
            require('onedark').setup {
                style = 'deep'
            }
        -- require('onedark').load()
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        -- priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                transparent_background = true
            })
        -- require("catppuccin").load()
        end
    }
}
