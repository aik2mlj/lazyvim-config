return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- disable a keymap
      keys[#keys + 1] = { "K", "5gk" }
      keys[#keys + 1] = {
        "<leader>k",
        function()
          vim.lsp.buf.hover()
        end,
        desc = "LSP Hover",
      }

      -- tinymist
      opts.servers = vim.tbl_deep_extend("force", opts.servers or {}, {
        tinymist = {
          settings = {
            exportPdf = "onType",
            formatterMode = "typstyle",
          },
        },
      })
    end,
  },
}
