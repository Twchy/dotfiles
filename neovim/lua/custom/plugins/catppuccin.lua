return {
  'catppuccin/nvim',
  name = 'catppuccin',

  config = function()
    require('catppuccin').setup {}

    -- setup must be called before loading
    vim.cmd.colorscheme 'catppuccin'
  end,
}
