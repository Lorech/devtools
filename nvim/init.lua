-- Enable my custom Vim options and keybinds.
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
-- All the plugins are exported from "./plugins/".
require("lazy").setup("plugins")
