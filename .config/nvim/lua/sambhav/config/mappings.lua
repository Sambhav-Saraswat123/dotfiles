vim.g.mapleader = " "

-- Exit insert mode with jk
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit input mode with jk" })

-- Clear highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { noremap = true, desc = "Clear highlights" })

-- Increment/decrement number
vim.keymap.set("n", "<leader>+", "<C-a>", { noremap = true, desc = "Increment number" })
vim.keymap.set("n", "<leader>-", "<C-x>", { noremap = true, desc = "Decrement number" })

-- Temporary Netrw
-- vim.keymap.set("n", "-", ":E<CR>", { noremap = true, desc = "Open Netrw" })

-- Tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", { noremap = true, desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", { noremap = true, desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", { noremap = true, desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", { noremap = true, desc = "Go to previous tab" })

-- Line movement and indentation
vim.keymap.set("n", "K", ":m .-2<CR>==", { noremap = true, desc = "Move line up and re-indent" })
vim.keymap.set("n", "J", ":m .+1<CR>==", { noremap = true, desc = "Move line down and re-indent" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, desc = "Move selected lines up and re-indent" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, desc = "Move selected lines down and re-indent" })
