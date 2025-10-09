-- bootstrap lazy.nvim, LazyVim and your plugins

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.termguicolors = true
require("config.lazy")
require("config.autocmds")
vim.g.startify_session_persistence = 1
