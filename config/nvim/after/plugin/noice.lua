require("noice").setup(
    {
        cmdline = {
            view = "cmdline",
            format = {
                cmdline = { icon = "#" },
                search_down = { icon = "/" },
                search_up = { icon = "SU:" },
                filter = { icon = "$" },
                lua = { icon = "lua:" },
                help = { icon = "?" },
            },
        },
        lsp = {
            -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true,
            },
        },
        -- you can enable a preset for easier configuration
        presets = {
            bottom_search = true,          -- use a classic bottom cmdline for search
            long_message_to_split = false, -- long messages will be sent to a split
        },

    }
)
