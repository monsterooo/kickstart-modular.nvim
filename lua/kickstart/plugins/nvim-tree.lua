return { -- Tree explorer
  'nvim-tree/nvim-tree.lua',
  version = "*",
  lazy = false,
  dependencies = {
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  config = function()
    require("nvim-tree").setup {
      modified = {
        enable = true,              -- 启用未保存修改状态功能
        show_on_dirs = true,        -- 在文件夹上显示未保存修改状态
        show_on_open_dirs = true,   -- 在打开的文件夹上显示未保存修改状态
      },
      renderer = {
        icons = {
          show = {
            modified = true,        -- 显示修改图标
          },
        },
        highlight_modified = 'icon',  -- 高亮显示修改的文件/文件夹
      }
    }
    -- Control + n 显示/隐藏 nvim-tree
    vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
    -- space + f 在 nvim-tree 中显示打开的文件
    vim.keymap.set('n', '<leader>f', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })
  end,
}