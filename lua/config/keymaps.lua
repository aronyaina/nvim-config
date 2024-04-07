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

-- Increment/decrement
key.set("n", "+", "<C-a>")
key.set("n", "-", "<C-x>")

-- Disable continuations
key.set("n", "<leader>o", "o<Esc>^Da", opts)
key.set("n", "<leader>O", "O<Esc>^Da", opts)

-- Jumplist
key.set("n", "<C-m>", "<C-i>", opts)
-- Split window
key.set("n", "ss", ":split<Return>", opts)
key.set("n", "sv", ":vsplit<Return>", opts)
key.set("n", "<leader>z", ":ZenMode<Return>", opts)

key.set("n", "<C-h>", ":TmuxNavigateLeft<Return>", opts)
key.set("n", "<C-l>", ":TmuxNavigateRight<Return>", opts)
key.set("n", "<C-j>", ":TmuxNavigateDown<Return>", opts)
key.set("n", "<C-k>", ":TmuxNavigateUp<Return>", opts)

key.set("n", "<leader>e", ":Neotree toggle<Return>", opts)
vim.keymap.set("n", "<leader>cr", function()
	return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })
