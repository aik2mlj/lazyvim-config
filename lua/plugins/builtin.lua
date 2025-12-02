return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "fish",
      },
    },
  },
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "enter",
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
      },
    },
  },
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   keys = {
  --     -- reserved for comment/uncomment
  --     { "<leader>/", false },
  --   },
  --   opts = {
  --     defaults = {
  --       mappings = {
  --         i = {
  --           ["<C-j>"] = "move_selection_next",
  --           ["<C-k>"] = "move_selection_previous",
  --         },
  --       },
  --       -- layout_strategy = "horizontal",
  --       -- layout_config = { prompt_position = "top" },
  --       -- sorting_strategy = "ascending",
  --       -- winblend = 0,
  --     },
  --   },
  -- },
  {
    "ibhagwan/fzf-lua",
    keys = {
      { "<leader>/", false },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        width = 30,
        mappings = {
          ["l"] = "open",
          ["h"] = "close_node",
        },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = {},
      },
    },
  },
  {
    "nvim-mini/mini.pairs",
    opts = {
      skip_next = [=[[%w%%%'%[%"%.%`]]=],
    },
  },
  {
    "snacks.nvim",
    opts = {
      -- disable scroll animation
      scroll = { enabled = false },
    },
  },
}
