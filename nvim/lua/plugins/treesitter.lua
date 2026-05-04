return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "BufReadPost",
  config = function()
    local parsers = {
      "javascript", "typescript", "tsx", "json",
      "html", "css", "lua", "vim", "vimdoc",
      "swift", "markdown", "markdown_inline", "yaml", "python",
    }

    -- Install missing parsers
    local installed = require("nvim-treesitter.config").get_installed()
    local to_install = vim.tbl_filter(function(p)
      return not vim.list_contains(installed, p)
    end, parsers)

    if #to_install > 0 then
      vim.cmd("TSInstall " .. table.concat(to_install, " "))
    end
  end,
}
