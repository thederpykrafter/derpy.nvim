return {
  {
    'OXY2DEV/markview.nvim',
    lazy = false,
    dependencies = {
      'saghen/blink.cmp',
    },
  },
  {

    'iamcco/markdown-preview.nvim',

    config = function()
      vim.cmd([[do FileType]])

      vim.cmd([[

function OpenMarkdownPreview (url)

let cmd = "firefox --new-window " . shellescape(a:url) . " &"

silent call system(cmd)

endfunction

]])

      vim.g.mkdp_browserfunc = 'OpenMarkdownPreview'

      vim.g.mkdp_open_ip = '127.0.0.1'

      vim.g.mkdp_highlight_css = '/home/caue/dotfiles/dotconfig/highlight.css'

      vim.g.mkdp_port = 8080
    end,
  },
}
