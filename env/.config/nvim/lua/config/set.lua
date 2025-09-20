local set = vim.opt

set.nu = true
set.relativenumber = true

set.shiftwidth = 4
set.tabstop = 4
vim.o.expandtab = false
set.expandtab = true
set.smartindent = true
set.wrap = false

set.scrolloff = 8
set.signcolumn = "yes"

set.hlsearch = false
set.backup = false
set.swapfile = false

set.termguicolors = true
set.clipboard = "unnamedplus"

vim.cmd(":hi statusline guibg=NONE")
set.signcolumn = "no"
vim.o.winborder = "rounded"
