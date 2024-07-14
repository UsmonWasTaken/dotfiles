function keymap(mode, key, command, desc)
  local opts = {
    noremap = true,
    silent = true,
    desc = desc,
  }
  vim.keymap.set(mode, key, command, opts)
end

keymap("n", "<leader>r", "<cmd>source %<CR>", "Source current file")

keymap("n", "<C-h>", "<C-w>h", "Focus on LEFT pane")
keymap("n", "<C-j>", "<C-w>j", "Focus on RIGHT pane")
keymap("n", "<C-k>", "<C-w>k", "Focus on TOP pane")
keymap("n", "<C-l>", "<C-w>l", "Focus on BOTTOM pane")

keymap("i", "kj", "<ESC>", "Exit INSERT mode")
keymap("i", "jk", "<ESC>", "Exit INSERT mode")

keymap("v", "<", "<gv^", "Indent to the LEFT")
keymap("v", ">", ">gv^", "Indent to the RIGHT")

keymap("v", "<A-j>", "<cmd>m '>+1<CR>gv=gv", "Move UP")
keymap("v", "<A-k>", "<cmd>m '<-2<CR>gv=gv", "Move DOWN")

