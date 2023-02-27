vim.g.rspec_command = "VtrSendCommandToRunner! bundle exec rspec {spec}"

vim.keymap.set("n", "<Leader>t", ":RunCurrentSpecFile()<CR>")
vim.keymap.set("n", "<Leader>s", ":RunNearestSpec()<CR>")
vim.keymap.set("n", "<Leader>l", ":RunLastSpec()<CR>")
vim.keymap.set("n", "<Leader>a", ":RunAllSpecs()<CR>")
