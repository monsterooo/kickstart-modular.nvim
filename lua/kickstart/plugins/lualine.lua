return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = "VeryLazy",
  config = function()
    require('lualine').setup {
      options = {
        theme = 'gruvbox',
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename', 'lsp_progress' },
        lualine_x = {
          'encoding',
          'fileformat',
          'filetype',
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      tabline = {
        -- 顶部栏不设置任何东西，因为它会覆盖掉bufferline的tab
        -- lualine_a = { 'tabs' },
        -- lualine_b = { 'buffers' },
        -- lualine_c = {},
        -- lualine_x = {},
        -- lualine_y = {},
        -- lualine_z = {},
      },
    }
  end,
}