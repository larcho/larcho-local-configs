return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<C-t>", "<cmd>Neotree toggle<cr>", desc = "Toggle file tree" },
  },
  opts = {
    filesystem = {
      follow_current_file = { enabled = true },
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  },
}
