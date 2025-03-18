-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

require("custom.capslock_indicator").start_check()

vim.api.nvim_set_hl(0, "LualineCapsLock", { fg = "#FFFFFF", bg = "#FF0000", bold = true })
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("Neotree")
    -- vim.cmd("vertical resize 30")
    -- vim.cmd("wincmd l")
    -- vim.cmd("split")
    -- vim.cmd("terminal")
    -- vim.cmd("horizontal resize 15")
    vim.cmd("wincmd l")
  end,
})
