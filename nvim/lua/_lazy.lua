-- L A Z Y --------------------------------------------------------------------

-- make lazy path
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- clone lazy.nvim if not exists
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git", "clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		-- latest stable release
		"--branch=stable",
		lazypath,
	})
end
-- add lazy.nvim to runtimepath
vim.opt.rtp:prepend(lazypath)

-- get lazy
local lazy = require('lazy')


lazy.setup {
	{
		"https://github.com/folke/tokyonight.nvim.git"
	},
	{
		'https://github.com/sindrets/diffview.nvim.git'
	},
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",         -- required
			"nvim-telescope/telescope.nvim", -- optional
			"ibhagwan/fzf-lua",              -- optional
		},
		config = true
	},
	-- comment
	{
		'numToStr/Comment.nvim',
		opts = {},
		lazy = false,
	},
	-- deadcolumn
	{
		'https://github.com/Bekaboo/deadcolumn.nvim.git'
	},
	{
		'https://github.com/nvim-lua/plenary.nvim.git'
	},
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate'
	},
	{
		'https://github.com/kyazdani42/nvim-web-devicons'
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
	},
	{
		'https://github.com/nvim-telescope/telescope.nvim.git'
	},
	{
		'https://github.com/zbirenbaum/copilot.lua.git'
	},
	{
		'https://github.com/neovim/nvim-lspconfig'
	},
	{
		'https://github.com/weilbith/nvim-lsp-smag'
	},
	{
		'https://github.com/kevinhwang91/nvim-bqf.git'
	},
	{
		'https://github.com/hrsh7th/cmp-nvim-lsp'
	},
	{
		'https://github.com/hrsh7th/nvim-cmp'
	},
	{
		'https://github.com/hrsh7th/cmp-buffer'
	},
	{
		'https://github.com/hrsh7th/cmp-path'
	},
	{
		'https://github.com/hrsh7th/cmp-cmdline'
	},
	{
		'https://github.com/saadparwaiz1/cmp_luasnip.git'
	},
	{
		'https://github.com/L3MON4D3/LuaSnip.git'
	},
	{
		'https://github.com/morhetz/gruvbox'
	},
	{
		'https://github.com/atelierbram/Base2Tone-nvim'
	},
	{
		'https://gitlab.com/HiPhish/rainbow-delimiters.nvim'
	},
	{
		'https://github.com/pineapplegiant/spaceduck'
	},
}
