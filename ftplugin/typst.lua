require("mini.pairs").setup({
  mappings = {
    [" "] = { action = "open", pair = "  ", neigh_pattern = "[%(%[{%$][%)%]}%$]" },
    ["$"] = { action = "closeopen", pair = "$$" },
  },
})
