return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = { "ts_ls", "pyright" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "saghen/blink.cmp" },
    config = function()
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
      })

      -- LSP keymaps on attach
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local map = function(keys, func, desc)
            vim.keymap.set("n", keys, func, { buffer = args.buf, desc = desc })
          end
          map("gd", vim.lsp.buf.definition, "Go to definition")
          map("gr", vim.lsp.buf.references, "References")
          map("K", vim.lsp.buf.hover, "Hover")
          map("<leader>ca", vim.lsp.buf.code_action, "Code action")
          map("<leader>rn", vim.lsp.buf.rename, "Rename")
          map("<leader>d", vim.diagnostic.open_float, "Line diagnostics")
        end,
      })

      local capabilities = require("blink.cmp").get_lsp_capabilities()

      -- Server configs
      vim.lsp.config("ts_ls", { capabilities = capabilities })
      vim.lsp.config("pyright", { capabilities = capabilities })
      vim.lsp.config("sourcekit", { capabilities = capabilities })

      -- Enable all
      vim.lsp.enable({ "ts_ls", "pyright", "sourcekit" })
    end,
  },
}
