-- Enable true color mode.
vim.opt.termguicolors = true

-- Set tabs to be 2 spaces wide.
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Enable line numbers.
vim.opt.nu = true
vim.opt.relativenumber = true

-- Add visual columns for long lines.
vim.opt.colorcolumn = "80,120"

-- Ensure minimum amount of lines while scrolling.
vim.opt.scrolloff = 8

-- Consider kebab-case strings as words.
vim.opt.iskeyword:append("-")
