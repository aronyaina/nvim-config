vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

vim.cmd [[autocmd BufRead *.yaml,*.yml if search('hosts:\|tasks:\|name:', 'nw') | set ft=yaml.ansible | endif]]
vim.cmd [[autocmd BufRead docker-compose.* set ft=yaml.docker-compose]]
vim.cmd [[autocmd BufRead dockerfile.* set ft=dockerfile]]

local opt = vim.opt

vim.g.root_spec = { "root" }

opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.showmode = false
opt.breakindent = true
opt.undofile = true
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = "yes"
opt.updatetime = 250
opt.timeoutlen = 300
opt.splitright = true
opt.splitbelow = true
opt.inccommand = "split"
opt.cursorline = true
opt.scrolloff = 10
opt.swapfile = false
opt.hlsearch = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.shell = "zsh"
vim.opt.clipboard:append('unnamedplus')

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
