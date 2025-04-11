-- Initialize Lazy.nvim if it's not already installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Load the plugins using lazy.nvim
require("lazy").setup("plugins")

-- Load vim options
require("vim-options")
-- Toggle terminal with Ctrl +
vim.keymap.set("n", "<C-t>", function()
  local current_buf = vim.api.nvim_get_current_buf()
  local buffers = vim.api.nvim_list_bufs()

  for _, buf in ipairs(buffers) do
    if vim.api.nvim_buf_is_loaded(buf) and vim.api.nvim_buf_get_option(buf, "filetype") == "terminal" then
      if current_buf == buf then
        -- Close terminal if already focused
        vim.cmd("bd!")
        return
      else
        -- Switch to terminal buffer if it's already open
        vim.api.nvim_set_current_buf(buf)
        return
      end
    end
  end
  -- No terminal found → open one
  vim.cmd("botright 10split | terminal")
  vim.cmd("startinsert")
end, { desc = "Toggle terminal at bottom with Ctrl + t" })
vim.keymap.set("n", "<C-g>", ":Neogit<CR>", { desc = "Open Git Source Control UI" })
