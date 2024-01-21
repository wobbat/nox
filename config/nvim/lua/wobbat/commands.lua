local command = vim.api.nvim_create_user_command

-- Trim trailing whitespace and trailing blank lines on save
local function daily_note()
    local date = os.date('%d-%m-%Y')
    vim.cmd.edit("~/_/log/daily/" .. date .. ".md")
end

command('DailyNote', daily_note, {})

-- Trim trailing whitespace and trailing blank lines on save
local function insert_time()
    local date = os.date('%H:%M')
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('i' .. date .. ' - <esc>a', true, false, true), 'm', true)
end

command('InsertTime', insert_time, {})
