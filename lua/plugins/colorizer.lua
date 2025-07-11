return {
  'norcalli/nvim-colorizer.lua',
  config = function()
    require 'colorizer'.setup({
      '*',
      '!vim',
    }, {
      RGB = true, -- #RGB hex codes
      RRGGBB = true, -- #RRGGBB hex codes
      names = true, -- "Name" codes like Blue
      RRGGBBAA = true, -- #RRGGBBAA hex codes
      rgb_fn = true, -- CSS rgb() and rgba() functions
      hsl_fn = true, -- CSS hsl() and hsla() functions
      css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
      css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      -- Available modes: foreground, background
      mode = 'background', -- Set the display mode.
    })
  end,
  keys = {
    {
      '<leader>da',
      '<cmd>ColorizerAttachToBuffer<cr>',
      desc = 'Atach Colorizer',
    },
    {
      '<leader>dr',
      '<cmd>ColorizerReloadAllBuffers<cr>',
      desc = 'Reload Colorizer',
    },
    {
      '<leader>dd',
      '<cmd>ColorizerDetachFromBuffer<cr>',
      desc = 'Detach Colorizer',
    },
    {
      '<leader>tc',
      '<cmd>ColorizerToggle<cr>',
      desc = 'Toggle Colorizer',
    },
  },
}
