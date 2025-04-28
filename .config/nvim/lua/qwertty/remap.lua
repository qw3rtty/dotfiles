vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>tt", vim.cmd.term)
vim.keymap.set("n", "<leader>sv", function()
    vim.cmd.vsplit();
    local keys = vim.api.nvim_replace_termcodes("<C-w>l", true, true, true);
    vim.api.nvim_feedkeys(keys, 'n', true);
end)
vim.keymap.set("n", "<leader>sh", function()
    vim.cmd.split();
    local keys = vim.api.nvim_replace_termcodes("<C-w>j", true, true, true);
    vim.api.nvim_feedkeys(keys, 'n', true);
end)