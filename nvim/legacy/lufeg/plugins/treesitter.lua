return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = { "bash", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "python" , "regex", "latex"},
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
            autotag = { enable = true }
        })
    end
}
