return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require('bufferline').setup {
      options = {
        offsets = {
          {
            filetype = "NvimTree",
            text = "",
            padding = 1,
            separator = false
          }
        },
        separator_style = "thick"
      }
    }

    -- 下一个 tab
    vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { noremap = true, silent = true })
    -- 上一个 tab
    vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { noremap = true, silent = true })
    -- 关闭当前 tab
    vim.keymap.set("n", "<leader>c", "<cmd>bdelete<CR>", { noremap = true, silent = true })

    -- 切换到指定的 tab
    for i = 1, 9 do
      vim.keymap.set("n", "<leader>" .. i, function()
        require("bufferline").go_to_buffer(i, true)
      end, { noremap = true, silent = true })
    end
  end
}