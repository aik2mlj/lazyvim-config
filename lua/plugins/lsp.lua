return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- disable a keymap
      keys[#keys + 1] = { "K", false }
      keys[#keys + 1] = {
        "<leader>k",
        function()
          vim.lsp.buf.hover()
        end,
        desc = "LSP Hover",
      }
    end,
  },
}
