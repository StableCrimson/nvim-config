return {
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
		config = function()
			local todo = require("todo-comments")
			todo.setup({})
			vim.keymap.set("n", "<leader>tt", ":TodoTelescope<CR>")
		end,
	},
}
