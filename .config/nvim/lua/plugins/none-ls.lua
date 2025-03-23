return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.sources = {
      null_ls.builtins.formatting.stylua,
      vim.keymap.set('n', '<C-S-f>', vim.lsp.buf.format, {})
    }
  end
}
