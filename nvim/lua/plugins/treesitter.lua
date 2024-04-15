-- Configure Treesitter for syntax highlighting.
-- https://github.com/nvim-treesitter/nvim-treesitter
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "go", "lua" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
