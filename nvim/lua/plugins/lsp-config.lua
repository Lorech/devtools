-- Configuration for LSP and related plugins.
-- https://github.com/williamboman/mason.nvim for LSP, DAP, linter and formatter tooling
-- https://github.com/williamboman/mason-lspconfig.nvim for convenience APIs
-- https://github.com/neovim/nvim-lspconfig for LSP communication
return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "gopls", "lua_ls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Language configurations.
      lspconfig.lua_ls.setup({})
      lspconfig.gopls.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {}) -- Open hovering documentation.
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {}) -- Open definition.
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {}) -- Open code actions.
    end
  },
}
