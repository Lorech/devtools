-- Configure Telescope file finder.
-- https://github.com/nvim-telescope/telescope.nvim
return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<C-p>", builtin.find_files, {}) -- Ctrl + P to find files.
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}) --  Space + F + G to grep files.
  end
}
