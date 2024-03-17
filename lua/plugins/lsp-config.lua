-- This is actually a couple of different plugins,
-- but they all work together so I'm bundling them into a single file
return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "bashls",
          "clangd",
          "cssls",
          "eslint",
          "html",
          "jsonls",
          "jdtls",
          "tsserver",
          "ltex",
          "lua_ls",
          "marksman",
          "spectral",
          "pylsp",
          "rust_analyzer",
          "yamlls"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      lspconfig.bashls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.cssls.setup({})
      lspconfig.eslint.setup({})
      lspconfig.html.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.ltex.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.marksman.setup({})
      lspconfig.spectral.setup({})
      lspconfig.pylsp.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.yamlls.setup({})
    end
  }
}
