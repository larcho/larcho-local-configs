return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<c-p>", "<cmd>Telescope find_files<cr>", desc = "Find files" },
    { "<c-y>", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    { "<leader>r", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
  },
}
