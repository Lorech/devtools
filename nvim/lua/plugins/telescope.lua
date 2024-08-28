-- Configure Telescope navigator.
-- https://github.com/nvim-telescope/telescope.nvim for file finder
-- https://github.com/nvim-telescope/telescope-ui-select.nvim for UI actions.
return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})      -- Ctrl + P to find files.
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})  --  Space + F + G to grep files.
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        pickers = {
          find_files = {
            hidden = true,
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
