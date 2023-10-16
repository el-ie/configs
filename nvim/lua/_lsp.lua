-- N V I M  L S P -------------------------------------------------------------

-- requirement for lspconfig
local nvim_lsp = require('lspconfig')

-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- flags for all language servers
local lsp_flags = {
	-- refresh rate (milliseconds)
	debounce_text_changes = 200,
}

-- on_attach function for all language servers
local on_attach = function(client, bufnr)

	----BEGIN TEST:
	--  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
	--  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
	--
	--    -- Enable completion triggered by <c-x><c-o>
 -- buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
	--
 -- -- Mappings
 -- local opts = { noremap = true, silent = true }
	--
 --   buf_set_keymap('n', '<leader>b', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
	--
 -- ----END TEST
 -- -- FAILURE

	-- get the active client
	--local client = vim.lsp.get_active_clients()[1]
	-- disable token semantic highlighting
	client.server_capabilities.semanticTokensProvider = nil
end





-- setup clangd language server
nvim_lsp.clangd.setup {

	on_attach    = on_attach,
	flags        = lsp_flags,
	capabilities = capabilities,
	filetypes    = {"cpp", "hpp", "c", "h"},
	cmd          = {
		"clangd",
		"--background-index"
	},
	-- explain root_dir value:
	-- 1. if there is a compile_commands.json file in the current directory, use it
	-- 2. if there is a .git directory in the current directory, use it
	-- 3. otherwise use the parent directory
	root_dir = nvim_lsp.util.root_pattern("compile_commands.json", ".git"),

	init_options = {
		clangdFileStatus = true
	}



}



-- setup typescript language server
nvim_lsp.tsserver.setup {
	on_attach     = on_attach,
	flags        = lsp_flags,
	filetypes    = { "typescript", "typescriptreact", "typescript.tsx" },
	capabilities = capabilities
}

-- Customizing how diagnostics are displayed
vim.diagnostic.config({
	virtual_text		= true,
	signs				= true,
	underline			= false,
	update_in_insert	= false,
	severity_sort		= false,
})


-- realtime lsp hint
vim.o.updatetime = 25
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]


