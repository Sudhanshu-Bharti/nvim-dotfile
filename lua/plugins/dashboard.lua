local date = os.date("%A, %B %d, %Y")
local time = os.date("%H:%M:%S")

return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = "alchemist\n\n" .. date .. "\n" .. time,
      },
    },
  },
  config = function(_, opts)
    require("snacks").setup(opts)
    
    -- Custom highlight groups for dashboard
    vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#7aa2f7", bold = true }) -- Blue for header
    vim.api.nvim_set_hl(0, "SnacksDashboardKey", { fg = "#9ece6a" }) -- Green for keys
    vim.api.nvim_set_hl(0, "SnacksDashboardDesc", { fg = "#bb9af7" }) -- Purple for descriptions
    vim.api.nvim_set_hl(0, "SnacksDashboardIcon", { fg = "#ffffff" }) -- Red for icons
  end,
}
