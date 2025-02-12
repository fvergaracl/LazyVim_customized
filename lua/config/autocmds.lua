-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("NERDTree")
    vim.cmd("vertical resize 30")
    vim.cmd("wincmd l")
    vim.cmd("split")
    vim.cmd("terminal")
    vim.cmd("horizontal resize 10")
    vim.cmd("wincmd k")
  end,
})
