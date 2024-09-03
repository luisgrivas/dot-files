return {
    'stevearc/conform.nvim',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")
        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
                -- Conform will run multiple formatters sequentially
                python = { "isort", "black" },
                -- You can customize some of the format options for the filetype (:help conform.format)
                rust = { "rustfmt", lsp_format = "fallback" },
                -- Conform will run the first available formatter
                javascript = { "prettierd", "prettier", stop_after_first = true },
                markdown = { "prettier" },
                json = { "jq" }
                -- sql = { "prettier" }
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            },
        })
        conform.formatters.black = {
            prepend_args = { "--skip-string-normalization", "--line-length", "90" }
        }
        conform.formatters.sqlfmt = {
            env = { "SQLFMT_DIALECT=polyglot" }
        }
        vim.keymap.set({ "n", "v" }, "<leader>mp", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end
}
