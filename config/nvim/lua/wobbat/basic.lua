-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true
-- Formatting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.list = true

vim.opt.listchars = {
    space = "⋅",
    eol = "↴",
    tab = "▎_",
    -- tab = "|_>",
    trail = "•",
    extends = "❯",
    precedes = "❮",
    nbsp = "",
}
vim.opt.fillchars = {
    fold = " ",
    foldsep = " ",
    foldopen = "",
    foldclose = "",
    diff = "╱",
}
vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true


vim.opt.scrolloff = 8
vim.opt.cursorline = true

vim.api.nvim_set_hl(0, 'CursorLine', { bg = 'none' })
--Fix markdown fenced code blocks
vim.cmd("let g:markdown_fenced_languages = ['html', 'php','python', 'javascript', 'js=javascript']")
-- theme
vim.opt.clipboard = "unnamedplus"

vim.cmd("set signcolumn=no")

vim.opt.spelllang = 'en_us,nl'
vim.opt.spell = true
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ab8550' })

vim.cmd("colorscheme dim")
vim.o.scrolloff = 8;

vim.cmd("let g:vim_markdown_frontmatter = 1")
vim.cmd("let g:vim_markdown_toml_frontmatter = 1")
vim.cmd("let g:vim_markdown_json_frontmatter = 1")
