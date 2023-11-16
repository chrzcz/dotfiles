vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.signcolumn = 'yes'
vim.opt.completeopt = 'menuone,noselect'
vim.opt.termguicolors = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.scrolloff = 10
vim.opt.colorcolumn = '80'

vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.netrw_browse_split = 0
