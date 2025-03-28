vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", {desc = "Open Parent Directory in Oil"})
vim.keymap.set("n", "di", function() vim.diagnostic.open_float() end, {desc="Open Diagnostics in Float"})
vim.keymap.set("n", "<leader>cf", function() require('conform').format({lsp_format = "falback"}) end, {desc = "Fmrmat current file"})

-- set system clipboard
vim.keymap.set('n','y','"+y')
vim.keymap.set('n','yy','"+yy')
vim.keymap.set('n','Y','"+Y')
vim.keymap.set('x','y','"+y')
vim.keymap.set('x','Y','"+Y')
