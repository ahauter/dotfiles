vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
vim.keymap.set("n", "<leader>gf", function()
    print("Fetching...")
    vim.cmd("Git fetch")
end);
vim.keymap.set("n", "<leader>gp", function()
    print("Fetching...")
    vim.cmd("Git push")
end);
