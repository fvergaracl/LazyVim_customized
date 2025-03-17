-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "gd", function()
  vim.lsp.buf.definition()
end, { noremap = true, silent = true, desc = "Go to Definition" })

vim.keymap.set("n", "<leader>er", ":Neotree close | Neotree reveal<CR>", { desc = "Reset Neo-tree root" })
