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
    version = "*", -- use the latest stable version
    event = "VeryLazy",
    dependencies = {
      { "nvim-lua/plenary.nvim", lazy = true },
    },
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
      -- yazi_floating_window_winblend = 100,
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
  -- {
  --   "greggh/claude-code.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim", -- Required for git operations
  --   },
  --   config = function()
  --     require("claude-code").setup({
  --       window = {
  --         split_ratio = 0.4,
  --         position = "vertical",
  --       },
  --     })
  --   end,
  -- },
  { "h-hg/fcitx.nvim" },
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    opts = {
      options = {
        show_source = {
          enabled = true, -- Enable showing source names
          if_many = true, -- Only show source if multiple sources exist for the same diagnostic
        },
      },
    },
  },
  {
    "OscarCreator/rsync.nvim",
    build = "make",
    dependencies = "nvim-lua/plenary.nvim",
    opts = {},
    specs = {
      {
        "folke/which-key.nvim",
        opts = {
          spec = {
            { "<leader>t", group = "Rsync Upload / Download", icon = { color = "green", icon = "" } },
            {
              "<leader>td",
              "<cmd>RsyncDownFile<cr>",
              desc = "Sync file from remote server",
              icon = { color = "green", icon = "󰇚" },
            },
            {
              "<leader>tD",
              "<cmd>RsyncDown<cr>",
              desc = "Sync all files from remote server",
              icon = { color = "blue", icon = "󰇚" },
            },
            {
              "<leader>tu",
              "<cmd>RsyncUpFile<cr>",
              desc = "Upload file to remote server",
              icon = { color = "green", icon = "󰕒" },
            },
            {
              "<leader>tU",
              "<cmd>RsyncUp<cr>",
              desc = "Upload all files to remote server",
              icon = { color = "blue", icon = "󰕒" },
            },
            { "<leader>tl", "<cmd>RsyncLog<cr>", desc = "Open log file for rsync.nvim" },
            { "<leader>tc", "<cmd>RsyncProjectConfig<cr>", desc = "Reload current project config" },
            { "<leader>tt", "<cmd>RsyncSaveSync<cr>", desc = "Toggle sync when saving" },
          },
        },
      },
    },
  },
  -- {
  --   "inhesrom/remote-ssh.nvim",
  --   branch = "master",
  --   dependencies = {
  --     "inhesrom/telescope-remote-buffer", --See https://github.com/inhesrom/telescope-remote-buffer for features
  --     "nvim-telescope/telescope.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "neovim/nvim-lspconfig",
  --   },
  --   config = function()
  --     require("telescope-remote-buffer").setup(
  --       -- Default keymaps to open telescope and search open buffers including "remote" open buffers
  --       --fzf = "<leader>fz",
  --       --match = "<leader>gb",
  --       --oldfiles = "<leader>rb"
  --     )
  --
  --     -- setup lsp_config here or import from part of neovim config that sets up LSP
  --
  --     require("remote-ssh").setup({
  --       -- on_attach = lsp_config.on_attach,
  --       -- capabilities = lsp_config.capabilities,
  --       filetype_to_server = {
  --         python = "pylsp",
  --         -- python = "pyright",
  --       },
  --       async_write_opts = {
  --         autosave = false,
  --       },
  --     })
  --   end,
  -- },
  {
    "lowitea/aw-watcher.nvim",
    opts = {},
  },
}
