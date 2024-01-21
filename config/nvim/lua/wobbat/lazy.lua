local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local opts = {};
-- Actually setup the plugins
require("lazy").setup({
    "wobbat/dim.nvim",
    "tpope/vim-markdown",
    'godlygeek/tabular',
    {
        'smoka7/hop.nvim',
        version = "*",
        opts = {},
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            debounce = 100,
            indent = { char = "|" },
            -- whitespace = { highlight = { "Whitespace", "NonText" } },
        }
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
        }
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            -- refer to the configuration section below
        },
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    },
    {
        'norcalli/nvim-colorizer.lua',
        opts = {},
    },
    -- which key, aint nobody remember all these keybinds
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    'nvim-lualine/lualine.nvim',
    -- make lua_ls behave for neovim
    -- otherwise i got errors, i think

    {
        "folke/neodev.nvim",
        opts = {}
    },
    {
        "folke/zen-mode.nvim",
        opts = {
            window = {
                backdrop = 1,
                width = .65,  -- width of the Zen window
                height = .65, -- height of the Zen window
                -- by default, no options are changed for the Zen window
                -- uncomment any of the options below, or add other vim.wo options you want to apply
                options = {
                    -- signcolumn = "no", -- disable signcolumn
                    -- number = false, -- disable number column
                    -- relativenumber = false, -- disable relative numbers
                    -- cursorline = false, -- disable cursorline
                    -- cursorcolumn = false, -- disable cursor column
                    -- foldcolumn = "0", -- disable fold column
                    -- list = false, -- disable whitespace characters
                },
            },
        }
    },
    -- LSP, just do not touch
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'github/copilot.vim' },
    { 'ellisonleao/gruvbox.nvim' },
    { 'Yazeed1s/minimal.nvim' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'ggandor/leap.nvim' },
    { 'hrsh7th/nvim-cmp' },
    --
    -- syntax upgraded
    { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },
    -- The one and only telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- comments, whoo
    { 'numToStr/Comment.nvim', opts = {} },
    -- neogit
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",         -- required
            "nvim-telescope/telescope.nvim", -- optional
            "sindrets/diffview.nvim",        -- optional
            "ibhagwan/fzf-lua",              -- optional
        },
        config = true
    },

    --gitsigns
    'lewis6991/gitsigns.nvim',

    -- mostly using this for markdown codeblocks, but adds a buttload of other text object
    {
        "chrisgrieser/nvim-various-textobjs",
        lazy = false,
        opts = { useDefaultKeymaps = true },
    },

    -- better undo
    {
        "jiaoshijie/undotree",
        dependencies = "nvim-lua/plenary.nvim",
        config = true,
        keys = { -- load the plugin only when using it's keybinding:
            { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
        },
    },
}, opts)
