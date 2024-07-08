vim.api.nvim_create_user_command('SetTheme', function(args)
  local theme = args['args'] or 'dark'
  local color = 'catppuccin-frappe'

  if theme == 'light' then
    color = 'catppuccin-latte'
  end

  vim.cmd.colorscheme(color)
end, { desc = 'Set the colorscheme', nargs = '*' })

return {
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  },
  -- { -- You can easily change to a different colorscheme.
  --   -- Change the name of the colorscheme plugin below, and then
  --   -- change the command in the config to whatever the name of that colorscheme is.
  --   --
  --   -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  --   'folke/tokyonight.nvim',
  --   priority = 1000, -- Make sure to load this before all the other start plugins.
  --   -- init = function()
  --   --   -- Load the colorscheme here.
  --   --   -- Like many other themes, this one has different styles, and you could load
  --   --   -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
  --   --   vim.cmd.colorscheme 'tokyonight-moon'
  --   --
  --   --   -- You can configure highlights by doing something like:
  --   --   vim.cmd.hi 'Comment gui=none'
  --   -- end,
  -- },

  -- TODO: Find a way to install all themes I want and then toggle between them with a command

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    -- opts = {
    --   color_overrides = {
    --     latte = {
    --       -- -------------------------------------------
    --       -- These are the default values, for reference
    --       -- base = '#eff1f5',
    --       -- text = '#4c4f69',
    --       -- -------------------------------------------
    --       base = '#eff1f5',
    --       text = '#444444',
    --       subtext1 = '#555555',
    --       subtext0 = '#666666',
    --     },
    --   },
    -- },
    -- init = function()
    --   -- Load the colorscheme here.
    --   -- Like many other themes, this one has different styles, and you could load
    --   -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    --   vim.cmd.colorscheme 'catppuccin-frappe'
    --
    --   -- You can configure highlights by doing something like:
    --   vim.cmd.hi 'Comment gui=none'
    -- end,
    config = function()
      require('catppuccin').setup {
        color_overrides = {
          latte = {
            -- -------------------------------------------
            -- These are the default values, for reference
            -- base = '#eff1f5',
            -- text = '#4c4f69',
            -- mantle = '#e6e9ef',
            -- crust = '#dce0e8',
            -- -------------------------------------------
            -- base = '#eff1f5',
            mantle = '#b1b3b8',
            crust = '#dce0e8',
            --
            --
            -- rosewater = '#c14a4a',
            -- flamingo = '#c14a4a',
            -- red = '#c14a4a',
            -- maroon = '#c14a4a',
            -- pink = '#945e80',
            -- mauve = '#945e80',
            -- peach = '#c35e0a',
            -- yellow = '#b47109',
            -- green = '#6c782e',
            -- teal = '#4c7a5d',
            -- sky = '#4c7a5d',
            -- sapphire = '#4c7a5d',
            -- blue = '#45707a',
            -- lavender = '#45707a',
            -- text = '#654735',
            -- subtext1 = '#73503c',
            -- subtext0 = '#805942',
            -- overlay2 = '#8c6249',
            -- overlay1 = '#8c856d',
            -- overlay0 = '#a69d81',
            -- surface2 = '#bfb695',
            -- surface1 = '#d1c7a3',
            -- surface0 = '#e3dec3',
            -- base = '#f9f5d7',
            -- mantle = '#f0ebce',
            -- crust = '#e8e3c8',
          },
        },
      }

      vim.cmd.colorscheme 'catppuccin-frappe'
    end,
  },
}
