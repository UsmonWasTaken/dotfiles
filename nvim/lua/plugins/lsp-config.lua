local lsp_configs = {
    ensure_installed = {
      "lua_ls", "kotlin_language_server",
    },
    automatic_installation = false,
    handlers = nil,
}

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      keymap("n", "df", vim.lsp.buf.hover, "Definition")
      keymap("n", "gd", vim.lsp.buf.definition, "Go to definition")
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup(lsp_configs)
    end
  }
}
