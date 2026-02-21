return {
  "nvim-treesitter/nvim-treesitter", 
  branch = 'master', 
  lazy = false, 
  build = ":TSUpdate",

  highlight = {
    enable = true
  },

  indent = {
    enable = true
  },
}
