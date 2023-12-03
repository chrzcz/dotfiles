local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    {'catppuccin/nvim', name = 'catppuccin'},
    {'nvim-telescope/telescope.nvim', dependencies = {'nvim-lua/plenary.nvim'}, tag = '0.1.4'},
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies =
        {
            'nvim-treesitter/nvim-treesitter-textobjects',
            'nvim-treesitter/nvim-treesitter-context'
        },
        build = ':TSUpdate'
    },
    {'mbbill/undotree'},
    {'theprimeagen/harpoon'},
    {'tpope/vim-fugitive'},
    {'neovim/nvim-lspconfig'},
    {
        'hrsh7th/nvim-cmp',
        dependencies =
        {
            'hrsh7th/cmp-nvim-lsp',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
        }
    },
    {'ThePrimeagen/refactoring.nvim', dependencies = {'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter'}}
})
