return  {
  "numToStr/Comment.nvim",
  lazy = false,
  dependencies = {
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      event = "VeryLazy",
    },
  },
  config = function ()
  vim.keymap.set('n', '<leader>/', "<Plug>(comment_toggle_linewise_current)", {desc = 'Comment'})
  vim.keymap.set('v', '<leader>/', "<Plug>(comment_toggle_linewise_visual)", {desc = 'Comment'})

  vim.g.skip_ts_context_commentstring_module = true

  require("ts_context_commentstring").setup {
    enable_autocmd = false,
  }

  require("Comment").setup {
    pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
  }
  end
}
