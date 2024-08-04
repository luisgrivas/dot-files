return {
    {
        "folke/tokyonight.nvim",
        name = "tokyonight",
        lazy = false,
        -- priority = 1000,
      config = function()
        vim.cmd("colorscheme tokyonight")
        require("tokyonight").setup({
            style = "night",
            transparent = false
        })
        -- require("tokyonight").load()
        end
    },
    {
        'navarasu/onedark.nvim',
        lazy=true,
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
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function ()
            require("rose-pine").setup({
                variant = "main",
                extend_background_behind_borders = true,
            })
        end
    },
    {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    -- priority = 1000,
    config = function()
        require 'nordic' .load()
    end
    },
    {
         "EdenEast/nightfox.nvim",
        name = "nightfox",
        config = function ()
            -- require("nightfox").load()
        end
    }
}
