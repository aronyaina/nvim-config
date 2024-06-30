vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.hlsearch = true

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

local key = vim.keymap
local opts = { noremap = true, silent = true }

-- Diagnostic keymaps
key.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
key.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
key.set("n", "<leader>?", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
key.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

key.set("n", "+", "<C-a>")
key.set("n", "-", "<C-x>")
key.set("n", "<C-a>", "gg<S-v>G")

key.set("n", "<leader>o", "o<Esc>^Da", opts)
key.set("n", "<leader>O", "O<Esc>^Da", opts)

key.set("n", "<C-m>", "<C-i>", opts)
key.set("n", "ss", ":split<Return>", opts)
key.set("n", "sv", ":vsplit<Return>", opts)
key.set("n", "<leader>z", ":ZenMode<Return>", opts)

key.set("n", "<C-h>", ":TmuxNavigateLeft<Return>", opts)
key.set("n", "<C-l>", ":TmuxNavigateRight<Return>", opts)
key.set("n", "<C-j>", ":TmuxNavigateDown<Return>", opts)
key.set("n", "<C-k>", ":TmuxNavigateUp<Return>", opts)

key.set("n", "<leader>e", ":Neotree toggle<Return>", opts)
vim.keymap.set("x", "<leader>re", ":Refactor extract ")
vim.keymap.set("x", "<leader>rf", ":Refactor extract_to_file ")

vim.keymap.set("x", "<leader>rv", ":Refactor extract_var ")

vim.keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var")

vim.keymap.set("n", "<leader>rI", ":Refactor inline_func")

vim.keymap.set("n", "<leader>rb", ":Refactor extract_block")
vim.keymap.set("n", "<leader>rbf", ":Refactor extract_block_to_file")
