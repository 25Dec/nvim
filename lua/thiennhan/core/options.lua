vim.cmd("let g:netrw_liststyle = 3")
vim.cmd("let g:minimap_width = 10")
vim.cmd("let g:minimap_auto_start = 1")
vim.cmd("let g:minimap_auto_start_win_enter = 1")

local opt = vim.opt

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- turn on termguicolors for tokyonight colorscheme to work
opt.termguicolors = true
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- others
opt.relativenumber = true
opt.number = true
opt.fillchars = { eob = " " } -- get rid of character "~"
opt.cursorline = true
