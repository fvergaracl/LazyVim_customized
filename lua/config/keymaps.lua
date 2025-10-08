-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "gd", function()
  vim.lsp.buf.definition()
end, { noremap = true, silent = true, desc = "Go to Definition" })

vim.keymap.set("n", "<leader>er", ":Neotree close | Neotree reveal<CR>", { desc = "Reset Neo-tree root" })

-- The following keymaps are for moltem plugin

-- Visual: ejecutar selección
vim.keymap.set("v", "<leader>r", ":<C-u>MoltenEvaluateVisual<CR>", { desc = "Molten: run selection" })
-- Normal: ejecutar línea actual
vim.keymap.set("n", "<leader>rl", ":MoltenEvaluateLine<CR>", { desc = "Molten: run line" })
-- Normal: ejecutar celda `# %%`
vim.keymap.set("n", "<leader>rc", ":MoltenReevaluateCell<CR>", { desc = "Molten: run cell (# %%)" })
-- Normal: archivo completo
vim.keymap.set("n", "<leader>rf", ":MoltenEvaluateFile<CR>", { desc = "Molten: run file" })
-- Normal: abrir salida
vim.keymap.set("n", "<leader>ro", ":MoltenEnterOutput<CR>", { desc = "Molten: open output" })
