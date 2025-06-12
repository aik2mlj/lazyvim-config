return {
  {
    "rebelot/kanagawa.nvim",
    opts = function()
      if not vim.g.neovide then
        return {
          transparent = true,
          colors = {
            theme = {
              all = {
                ui = {
                  bg_gutter = "none",
                },
              },
            },
          },
        }
      end
    end,
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>o",
        "<cmd>Yazi toggle<cr>",
        desc = "Resume the last yazi session",
      },
      {
        -- Open in the current working directory
        "<leader>cw",
        "<cmd>Yazi cwd<cr>",
        desc = "Open the file manager in nvim's working directory",
      },
    },
    opts = {
      floating_window_scaling_factor = 0.6,
      yazi_floating_window_winblend = 20,
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      heading = {
        sign = true,
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
      },
      code = {
        sign = true,
        position = "right",
      },
    },
  },
  {
    "chomosuke/typst-preview.nvim",
    ft = "typst",
    version = "0.3.*",
    build = function()
      require("typst-preview").update()
    end,
  },
  {
    "HakonHarnes/img-clip.nvim",
    event = "VeryLazy",
    -- opts = {},
    keys = {
      { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
    },
  },
  {
    "olimorris/codecompanion.nvim",
    config = function()
      require("codecompanion").setup({
        adapters = {
          deepseek = function()
            return require("codecompanion.adapters").extend("deepseek", {
              schema = {
                model = {
                  default = "deepseek-chat",
                },
              },
            })
          end,
        },
        strategies = {
          -- Change the default chat adapter
          chat = {
            adapter = "deepseek",
          },
        },
      })
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      { "<leader>Cc", "<cmd>CodeCompanionChat Toggle<cr>", mode = { "n", "v" }, desc = "Toggle a chat buffer" },
      {
        "<leader>CA",
        "<cmd>CodeCompanionChat Add<cr>",
        mode = "v",
        desc = "Add visually selected chat to the current chat buffer",
      },
      { "<leader>Ca", "<cmd>CodeCompanionActions<cr>", mode = { "n", "v" }, desc = "Show CodeCompanion actions" },
    },
  },
  {
    "benomahony/uv.nvim",
    opts = {
      picker_integration = true,
    },
  },
}
