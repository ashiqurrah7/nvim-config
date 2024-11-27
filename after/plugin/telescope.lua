require('telescope').setup({ defaults = { file_ignore_patterns = {"node_modules"} } })
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.expand("<cword>") });
end)

vim.keymap.set('n', '<leader>pp', builtin.git_status, {})