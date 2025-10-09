return {
  "simrat39/symbols-outline.nvim",
  event = "LspAttach",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    highlight_hovered_item = true,
    show_guides = true,
    auto_preview = false,
    position = "right",
    width = 30,
    show_symbol_details = true,
    autofold_depth = 1,
    auto_unfold_hover = true,
  },
  keys = {
    { "<leader>so", "<cmd>SymbolsOutline<CR>", desc = "Toggle Symbols Outline" },
  },
}
