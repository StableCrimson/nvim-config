return {
  "echasnovski/mini.nvim",
  version = false,
  config = function()
    require("mini.pairs").setup()  -- Automatically close braces, brackets, etc.
    require("mini.surround").setup() -- Surround text with braces, brackets, etc.
    require("mini.indentscope").setup() -- Highlight the scope of the current indent
    -- require("mini.icons").setup() -- Installs icons TODO: Replace nvim-web-devicons
    -- require("mini.tabline").setup() -- Show a tabline
  end,
}
