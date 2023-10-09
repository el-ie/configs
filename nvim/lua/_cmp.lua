-- N V I M  C M P -------------------------------------------------------------


local cmp = require("cmp")


-- C M P  I C O N S -----------------------------------------------------------

local kind_icons = {
	Text = '  ',		Method = '  ',		Function = '  ',	Constructor = '  ',
	Field = '  ',		Variable = '  ',	Class = '  ',		Interface = '  ',
	Module = '  ',		Property = '  ',	Unit = '  ',		Value = '  ',
	Enum = '  ',		Keyword = '  ',	Snippet = '  ',	Color = '  ',
	File = '  ',		Reference = '  ',	Folder = '  ',		EnumMember = '  ',
	Constant = '  ',	Struct = '  ',		Event = '  ',		Operator = '  ',
	TypeParameter = '  ',
	--Copilot = " ",
}


cmp.setup {

	autocomplete = true,

	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end
	},
	sources = {
		--{ name = 'copilot' },
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
		{ name = 'buffer' },
	},

	window = {
		completion = {
			winhighlight = "Normal:Normal,FloatBorder:foregr2,Search:PmenuSel",
			col_offset = 0,
			side_padding = 0,
			border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
			scrolloff = 10,
			scrollbar = true,
		},
		--completion = cmp.config.window.bordered(),
		--documentation = cmp.config.window.bordered(),
	},
	view = {
		entries = "custom" -- can be "custom", "wildmenu" or "native"
	},
	formatting = {
		fields = { "kind", "abbr", "menu" },
		--fields = { "abbr", "kind", "menu" },
		format = function(entry, vim_item)
			-- This concatonates the icons with the name of the item kind
			vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind)
			return vim_item
		end

	},
	mapping = cmp.mapping.preset.insert({

		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>']     = cmp.mapping.abort(),

		['<CR>']      = cmp.mapping.confirm({
			-- this is the important line
			behavior = cmp.ConfirmBehavior.Replace,
			select = false }),


		["<Tab>"]     = cmp.mapping(function(fallback)
			local luasnip = require 'luasnip'
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end),

		["<S-Tab>"]   = cmp.mapping(function(fallback)
			local luasnip = require 'luasnip'
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				if not cmp.visible() then
					cmp.complete()
				else
					fallback()
				end
			end
		end),



	}),


}

--cmp.event:on("menu_opened", function()
--	vim.b.copilot_suggestion_hidden = true
--end)
--
--cmp.event:on("menu_closed", function()
--	vim.b.copilot_suggestion_hidden = false
--end)

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'buffer' }
	}
})


cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' },
		{ name = 'cmdline' }
	})
})

