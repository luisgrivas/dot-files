return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = {
        { 'juansalvatore/git-dashboard-nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
    },
    opts = function()
        local git_dashboard = require('git-dashboard-nvim').setup {
            centered = false,
            top_padding = 19,
            bottom_padding = 2,
            -- author = 'luisgrivas',
            -- use_git_username_as_author = true,
            days = { 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun' },
        }

        local opts = {
            theme = 'doom',
            config = {
                header = git_dashboard,
                center = {
                    { action = 'ene | startinsert', desc = ' New File', icon = ' ', key = 'n' },
                    { action = 'Telescope oldfiles', desc = ' Recent Files', icon = ' ', key = 'r' },
                    { action = 'Telescope live_grep', desc = ' Find Text', icon = ' ', key = 'g' },
                    { action = 'NvimTreeToggle', desc = 'Open File Tree', icon = ' ', key = 'e' },
                    { action = 'Lazy', desc = ' Lazy', icon = '󰒲 ', key = 'l' },
                    { action = 'qa', desc = ' Quit', icon = ' ', key = 'q' },
                },
                footer = function()
                    return {}
                end,
            },
        }

        return opts
    end,
}
