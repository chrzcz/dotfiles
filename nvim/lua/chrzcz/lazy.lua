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
	{'rose-pine/neovim', name = 'rose-pine'},
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
    {'ThePrimeagen/refactoring.nvim', dependencies = {'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter'}}
})
