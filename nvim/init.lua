-- Set tabs to be 2 spaces wide.
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Download lazy.nvim package manager.
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

-- Configure lazy.nvim.
-- These are our additional plugins, or optional configuration to lazy.nvim itself.
local plugins = {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
      "nvim-lua/plenary.nvim"
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",
    }
  }
}
local opts = {}
require("lazy").setup(plugins, opts)

-- Configure Catppuccin as color theme.
-- https://github.com/catppuccin/nvim
require("catppuccin").setup({
  flavour = "mocha"
})
vim.cmd.colorscheme "catppuccin"

-- Configure Telescope file finder.
-- https://github.com/nvim-telescope/telescope.nvim
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {}) -- Ctrl + P to find files.
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) --  Space + F + G to grep files.

-- Configure Treesitter for syntax highlighting.
-- https://github.com/nvim-treesitter/nvim-treesitter
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = { "go", "javascript", "lua" },
  highlight = { enable = true },
  indent = { enable = true },
})

-- Configure Neotree for directory listings.
-- https://github.com/nvim-neo-tree/neo-tree.nvim
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>') -- Ctrl + N to view file directory.
