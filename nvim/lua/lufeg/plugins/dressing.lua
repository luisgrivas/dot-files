return {
  'stevearc/dressing.nvim',
  opts = {},
  config = function()
    require('dressing').setup({
            select = {
                builtin = {
                    win_options = {
                        cursorline = false,
                    }
                }
            }
        })
    end
}
