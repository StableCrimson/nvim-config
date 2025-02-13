return {
  "kdheepak/lazygit.nvim",
  lazy = true,
  cmd = { "LazyGit" },
  dependencies = {
    "nvim-lau/plenary.nvim",
  },
  keys = {
    { "<leader>lg", ":LazyGit<CR>", desc = "lazygit" },
  },
}
