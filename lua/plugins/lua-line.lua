return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        icons_enabled = true,
        theme = 'auto',
        -- component_separators = { left = '', right = '' },
        component_separators = {},
        -- section_separators = { left = '', right = '' },
        section_separators = {},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
          statusline = 100,
          tabline = 100,
          winbar = 100,
        },
      },
      sections = {
        lualine_a = { { 'mode', fmt = function(str) return str:sub(1, 1) end } },
        lualine_b = {
          'branch',
          { 'diff', symbols = { added = '', modified = '', removed = '' } },
          'diagnostics',
        },
        lualine_c = { { 'filename', newfile_status = true, path = 3 } },
        lualine_x = {
          'lsp_status',
        },
        lualine_y = {
          'fileformat',
          { 'filetype', icon_only = true },
        },
        lualine_z = {
          {
            'location',
            fmt = function()
              local line = vim.fn.line('.')
              local col = vim.fn.charcol('.')
              return string.format('%1d:%-1d', line, col)
            end,
          },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { { 'filename', newfile_status = true, path = 3 } },
        lualine_x = {
          {
            'location',
            fmt = function()
              local line = vim.fn.line('.')
              local col = vim.fn.charcol('.')
              return string.format('%1d:%-1d', line, col)
            end,
          },
        },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {
        'oil',
        'fzf',
        'lazy',
        'quickfix',
        'man',
        --'mason'
      },
    },
  },
}
