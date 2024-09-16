-- Set the global vim options.
-- These are imported from the *.lua file with the same name.
require("keymap")
require("options")

-- Ensure lazy.nvim package manager is installed.
-- https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

-- Configure lazy.nvim plugins.
require("lazy").setup({
	spec = {
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },
		{ import = "lazyvim.plugins.extras.lsp.none-ls" },
		{ import = "plugins" },
	},
})

-- Prevent LazyVim treating subdirectories as CWD.
-- Set this here, as options.lua gets loaded before LazyVim, so it doesn't override it's functionality.
vim.g.root_spec = { "cwd" }

-- Enable a custom color scheme.
-- These need to be configured here instead of options.lua to ensure plugins are loaded.
-- vim.cmd.colorscheme("catppuccin-latte")
-- vim.cmd.colorscheme("catppuccin-frappe")
-- vim.cmd.colorscheme("catppuccin-macchiato")
-- vim.cmd.colorscheme("catppuccin-mocha")
-- vim.cmd.colorscheme("rose-pine-main")
vim.cmd.colorscheme("rose-pine-moon")
-- vim.cmd.colorscheme("rose-pine-dawn")
