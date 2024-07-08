return {
  {
    'NeogitOrg/neogit',
    tag = 'v0.0.1',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed, not both.
      'nvim-telescope/telescope.nvim', -- optional
    },
    config = function()
      local neogit = require 'neogit'

      neogit.setup {}

      vim.keymap.set('n', '<leader>no', neogit.open, { desc = 'Open Neogit' })
      vim.keymap.set('n', '<leader>nc', neogit.close, { desc = 'Close Neogit' })
    end,
  },
  {
    'sindrets/diffview.nvim',
    config = function()
      local diffview = require 'diffview'
      local actions = require 'diffview.actions'

      diffview.setup {
        view = {
          -- Configure the layout and behavior of different types of views.
          -- Available layouts:
          --  'diff1_plain'
          --    |'diff2_horizontal'
          --    |'diff2_vertical'
          --    |'diff3_horizontal'
          --    |'diff3_vertical'
          --    |'diff3_mixed'
          --    |'diff4_mixed'
          -- For more info, see |diffview-config-view.x.layout|.
          default = {
            -- Config for changed files, and staged files in diff views.
            layout = 'diff2_horizontal',
          },
          merge_tool = {
            -- Config for conflicted files in diff views during a merge or rebase.
            layout = 'diff3_horizontal',
          },
          file_history = {
            -- Config for changed files in file history views.
            layout = 'diff2_horizontal',
          },
        },
        keymaps = {
          view = {
            { 'n', 'gf', actions.goto_file_edit, { desc = 'Open the file in the previous tabpage' } },
          },
          file_panel = {
            { 'n', 'gf', function ()
              actions.goto_file_edit()
              vim.api.nvim_command('tabonly')
            end, { desc = 'Open the file in the previous tabpage' } },
          },
        },
      }

      vim.keymap.set('n', '<leader>k', diffview.open, { desc = 'Open Git Diffview' })
      vim.keymap.set('n', '<leader>K', diffview.close, { desc = 'Close Git Diffview' })
    end,
  },
}
