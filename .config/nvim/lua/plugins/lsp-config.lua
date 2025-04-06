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
        ensure_installed = { "gopls", "lua_ls" },
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.gopls.setup({})
      vim.keymap.set('n', '<C-h>', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<C-d>', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<C-a>', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<C-S-f>', vim.lsp.buf.format, {})
    end
  }
}
