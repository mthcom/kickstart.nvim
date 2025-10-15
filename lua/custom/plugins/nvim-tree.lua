-- ~/.config/nvim/lua/plugins/nvim-tree.lua
return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional icons
  cmd = { 'NvimTreeToggle', 'NvimTreeFocus' },
  keys = {
    { '<leader>e', '<cmd>NvimTreeToggle<CR>', desc = 'Toggle File Explorer' },
  },
  config = function()
    require('nvim-tree').setup {
      view = {
        width = 30,
        side = 'left',
      },
      renderer = {
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
    }
  end,
}
