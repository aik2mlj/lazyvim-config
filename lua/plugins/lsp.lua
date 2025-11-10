return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = { virtual_text = false }, -- for tiny-inline-diagnostic.nvim
      servers = {
        ["*"] = {
          keys = {
            { "K", "5gk" },
            {
              "<leader>k",
              function()
                return vim.lsp.buf.hover()
              end,
              desc = "Hover",
            },
          },
        },
        tinymist = {
          settings = {
            exportPdf = "onType",
            formatterMode = "typstyle",
          },
        },
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "basic",
                -- ignore = { "*" },
              },
              disableOrganizeImports = true,
            },
          },
        },
      },
    },
  },
}
