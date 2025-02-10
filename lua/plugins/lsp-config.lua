-- This is actually a couple of different plugins,
-- but they all work together so I'm bundling them into a single file
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				path = "prepend",
			})
		end,
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
					"ts_ls",
					"ltex",
					"lua_ls",
					"marksman",
					"spectral",
					"pylsp",
					"rust_analyzer",
					"yamlls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {}) -- Show signature
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {}) -- Goto definition
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {}) -- Show code actions
			vim.keymap.set("n", "<leader>rs", vim.lsp.buf.rename, {}) -- Rename symbol

			lspconfig.bashls.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({ capabilities = capabilities })
			lspconfig.cssls.setup({ capabilities = capabilities })
			lspconfig.eslint.setup({ capabilities = capabilities })
			lspconfig.html.setup({ capabilities = capabilities })
			lspconfig.jsonls.setup({ capabilities = capabilities })
			lspconfig.jdtls.setup({ capabilities = capabilities })
			lspconfig.ts_ls.setup({ capabilities = capabilities })
			lspconfig.ltex.setup({ capabilities = capabilities })
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.marksman.setup({ capabilities = capabilities })
			lspconfig.spectral.setup({ capabilities = capabilities })
			lspconfig.pylsp.setup({ capabilities = capabilities })
			lspconfig.rust_analyzer.setup({ capabilities = capabilities })
			lspconfig.yamlls.setup({ capabilities = capabilities })
		end,
	},
}
