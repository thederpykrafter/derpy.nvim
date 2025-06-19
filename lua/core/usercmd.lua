local autocmd = vim.api.nvim_create_user_command

autocmd('Q', 'q', { desc = 'Quit' })
autocmd('W', 'w', { desc = 'Write to file' })
autocmd('WQ', 'wq', { desc = 'Write to file & Quit' })
autocmd('Wq', 'wq', { desc = 'Write to file & Quit' })
autocmd('wQ', 'wq', { desc = 'Write to file & Quit' })
autocmd('WA', 'wa', { desc = 'Write to all files' })
autocmd('Wa', 'wa', { desc = 'Write to all files' })
