return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  config = function()
    require("transparent").setup({
      extra_groups = { -- this makes almost everything transparent
        "all",       -- WARNING: this is very aggressive but works great
      },
    })
    vim.g.transparent_enabled = true
  end,
}
