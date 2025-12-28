-- leader key
vim.g.mapleader = vim.keycode("<Space>")

-- disable arrow keys
vim.keymap.set({ "n", "i", "v" }, "<Up>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Down>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Left>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Right>", "<Nop>")

-- Paste over selection without yanking it
vim.keymap.set("x", "p", '"_dP')

-- Center screen on jumps
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Visual: normalize spacing + trim trailing whitespace + clear search highlight
vim.keymap.set("x", "ss", [[:s/\S\zs\s\+/ /ge | keeppatterns '<,'>s/\s\+$//e | nohlsearch<CR>]], { desc = "Normalize spacing" })

-- Keep selection when indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- save & write
vim.keymap.set("n", "<leader>w", vim.cmd.write, { desc = "Save buffer" })
vim.keymap.set("n", "<leader>q", vim.cmd.quitall, { desc = "Quit all" })
vim.keymap.set("n", "<C-q>", function() vim.api.nvim_buf_delete(0, {}) end, { desc = "Close buffer" })

-- yank / paste without touching system clipboard (relies on vim.opt.clipboard = "unnamedplus")
vim.keymap.set({ "n", "x" }, "gy", '"0y', { desc = "Yank (Vim register only)" })
vim.keymap.set({ "n", "x" }, "gp", '"0p', { desc = "Paste (Vim register only)" })
