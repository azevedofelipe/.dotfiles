return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { 'nvim-tree/nvim-web-devicons', opts = {} } },
  config = function()
    require('oil').setup {
      skip_confirm_for_simple_edits = true,
      delete_to_trash = true,
      columns = { 'icon' },
      view_options = {
        show_hidden = true,
      },
    }

    vim.keymap.set('n', '<space>-', require('oil').toggle_float)
  end,
  lazy = false,
}
