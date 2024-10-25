return {
  'Mofiqul/vscode.nvim',
  name = 'vscode',
  lazy = false,
  priority = 1000,
  config = function()
    local c = require('vscode.colors').get_colors()
    require('vscode').setup {
      -- Alternatively set style in setup
      -- style = 'light'

      -- Enable transparent background
      transparent = true,

      -- Enable italic comment
      italic_comments = true,

      -- Underline `@markup.link.*` variants
      underline_links = true,

      -- Disable nvim-tree background color
      disable_nvimtree_bg = true,

      -- Override colors (see ./lua/vscode/colors.lua)
      color_overrides = {
        vscLineNumber = '#FFFFFF',
      },

      -- Override highlight groups (see ./lua/vscode/theme.lua)
      group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
      },
    }
    vim.cmd.colorscheme 'vscode'
  end,
}
--return {
--    "catppuccin/nvim",
--    name = "catppuccin",
--    lazy = false,
--    priority = 1000,
--    config = function()
--        require("catppuccin").setup({
--            transparent_background = true
--        })
--        vim.cmd.colorscheme("catppuccin")
--    end,
--
--}
-- return {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = {},
--     config = function()
--         vim.cmd.colorscheme("tokyonight-night")
--     end
-- }
--
-- return {
--     "rose-pine/neovim",
-- name = "rose-pine",
--	config = function()
--   vim.cmd.colorscheme("rose-pine")
--	end
-- }