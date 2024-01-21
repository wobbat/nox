require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "c", "lua", "go", "rust", "ocaml", "vim", "vimdoc", "query" },

    modules = {},
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    -- List of parsers to ignore installing (or "all")
    -- The only way to get inline fenced code blocks highlighted was to install tim pope pugin in
    -- And manually ensure these are never installed... tree sitter is the future...
    ignore_install = { "markdown", "markdown_inline" },
    indent = {
        enable = true,
    },

    highlight = {
        enable = true,
    },
}

vim.api.nvim_set_hl(0, "@headlines", { link = "Identifier" })
