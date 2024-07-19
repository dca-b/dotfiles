return {
    {
        "stevearc/conform.nvim",
        lazy = true,
        event = { "BufReadPre", "BufNewFile" },
        opts = {
            format = {
                timeout_ms = 3000,
            },
            formatters_by_ft = {
                php = { "php_cs_fixer" },
            },
            formatters = {
                ["php_cs_fixer"] = {
                    command = "php-cs-fixer",
                    args = {
                        "fix",
                        "--rules=@Symfony",
                        "$FILENAME",
                    },
                    stdin = false,
                },
            },
            notify_on_error = true,
        },
    },

    {
        "mfussenegger/nvim-lint",
        opts = {
            linters_by_ft = {
                --php = { "phpcs" },
                php = {},
            },
        },
    },

    {
        "nvimdev/dashboard-nvim",
        lazy = false,
        opts = {
            config = {
                header = {},
            },
        },
    },

    {
        "rcarriga/nvim-notify",
        opts = {
            timeout = 6000,
        },
    },

    {
        "folke/which-key.nvim",
        opts = {
            preset = "modern",
        },
    },
}
