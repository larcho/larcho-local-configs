local map = vim.keymap.set

-- Clipboard (explicit register, useful if you ever unset clipboard option)
map({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to clipboard" })
map({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from clipboard" })

-- Copy file path to clipboard
map("n", "<leader>yp", function()
  vim.fn.setreg("+", vim.fn.expand("%"))
end, { desc = "Yank file path" })

-- Better window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Buffer navigation
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
