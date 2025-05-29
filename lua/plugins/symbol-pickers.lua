return {
  {
    '2kabhishek/nerdy.nvim',
    -- dependencies = {
    --     '',
    -- },
    cmd = 'Nerdy',
    keys = {
      { '<leader>nn', '<cmd>Nerdy<cr>', desc = 'NerdFont Icon Picker' },
    },
  },
  {
    'nvim-telescope/telescope-symbols.nvim',
    keys = {
      {
        '<leader>ns',
        '<cmd>Telescope symbols<cr>',
        desc = 'Telescope Symbol Picker',
      },
    },
  },
}
