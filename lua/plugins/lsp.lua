return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- TS/JS (sirve para js/jsx/ts/tsx)
        tsserver = {},
        -- HTML/CSS/JSON
        html = {},
        cssls = {},
        jsonls = {},
        -- Tailwind (opcional, si usas)
        tailwindcss = {},
        -- Python
        pyright = {},
        -- Lua (ya lo tienes)
        lua_ls = {
          settings = {
            Lua = {
              workspace = { checkThirdParty = false },
              diagnostics = { globals = { "vim" } },
            },
          },
        },
        -- YAML / Bash
        yamlls = {},
        bashls = {},
      },
    },
  },
  -- Alternativa recomendada para TS: reemplaza tsserver por typescript-tools (mejor UX)
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    ft = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
    opts = {},
  },
}
