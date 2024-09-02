-- Map the leader button to spacebar.
vim.g.mapleader = " "

-- Move lines up/down in visual mode with J and K.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
