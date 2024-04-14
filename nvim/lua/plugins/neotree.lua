-- Configure Neotree for directory listings.
-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
 "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  config = function()
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>") -- Ctrl + N to view file directory.
  end
}
