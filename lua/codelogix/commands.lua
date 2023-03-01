-- strip trailing whitespace on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

-- set column width for slim/erb/html files
-- vim.api.nvim_create_autocmd({ "FileType" }, {
--   pattern = { "slim" },
--   command = [[set textwidth=1000]],
-- })

vim.api.nvim_command([[
    augroup ChangeBackgroudColour
        autocmd colorscheme * :hi normal guibg=#1d1d1d
    augroup END
]])
vim.api.nvim_command([[
    augroup ChangeStatusLineColour
        autocmd colorscheme * :hi StatusLine guibg=#1d1d1d
    augroup END
]])
vim.api.nvim_command([[
    augroup ChangeColorColumnColour
        autocmd colorscheme * :hi ColorColumn guibg=#252525
    augroup END
]])
vim.api.nvim_command([[
    augroup ChangeCursorLineColour
        autocmd colorscheme * :hi CursorLine guibg=#252525
    augroup END
]])
-- automatically rebalance windows on vim resize
vim.api.nvim_create_autocmd({ "VimResized" }, {
  pattern = { "*" },
  command = [[wincmd =]],
})

-- convert tabs to spaces
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
  pattern = { "*" },
  command = [[retab]],
})

-- markdown
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
  pattern = { "*.md" },
  command = [[set filetype=markdown]],
})

-- wrap the quickfix window
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "qf" },
  command = [[setlocal wrap linebreak]],
})

-- don't automatically continue comments after newline
vim.api.nvim_create_autocmd({ "BufNewFile,BufRead" }, {
  pattern = { "*" },
  command = [[setlocal formatoptions-=cro]],
})

-- highlight the line the cursor is on
vim.api.nvim_create_autocmd({ "WinEnter" }, {
  pattern = { "*" },
  command = [[setlocal cursorline]],
})
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*" },
  command = [[setlocal cursorline]],
})
vim.api.nvim_create_autocmd({ "WinLeave" }, {
  pattern = { "*" },
  command = [[setlocal nocursorline]],
})
