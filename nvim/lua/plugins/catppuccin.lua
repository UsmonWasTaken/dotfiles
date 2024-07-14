local configs = {
  flavour = "mocha",  -- latte, frappe, macchiato, mocha
  transparent_background = true,
}

return {
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000,
  lazy = false,
  config = function()
    require("catppuccin").setup(configs)
    vim.cmd.colorscheme "catppuccin"
  end
}
