-- get actions object for telescope mappings
local actions = require("telescope.actions")

-- check operating system
-- local is_linux = vim.fn.has("unix") == 1
-- local is_osx = vim.fn.has("macunix") == 1



require("telescope").setup {
	defaults = {
		preview = {
			--filesize_limit = 1,
			msg_bg_fillchar = "╱",
		},
		--sorting_strategy = 'ascending',
		winblend = 0,
		--history = false,
		prompt_prefix = '> ',
		initial_mode = "insert",
		border = true,
		-- BUG with live grep
		--scroll_strategy = "limit",
		layout_strategy = 'horizontal',
		mappings = {
			i = {
				["<esc>"] = actions.close
			},
		},
		-- Hint: Make sure that color is currently set to 'never'
		vimgrep_arguments = {
			'rg',				-- ripgrep program
			'--color=never',	-- specify when to use colors in output
			'--no-heading',		-- don't show matches grouped by file name
			'--with-filename',	-- show file name for matches
			'--line-number',	-- show line numbers for matches
			'--column',			-- show column numbers for matches
			'--smart-case',		-- search case-insensitively if pattern is all lowercase
			'--trim',			-- trim any ASCII whitespace prefix from each line
			'--ignore-file',
			'.gitignore'
		},
		-- lua regex
		file_ignore_patterns = { "%.DS_Store", "%.o", "%.d, %.asd, %.wav, %.aiff" }
	},
	pickers = {
		-- Lists files in your current working directory, respects .gitignore
		find_files = {
			theme = 'ivy',
			prompt_title = "fd file searcher !",
			--cwd = "$DOTDIR/",
			find_command = {
				'fd',
				'--no-ignore-vcs',
				'--color=never',
				'--type=file',
				'--strip-cwd-prefix',
				'--exclude=.git',
				'--exclude=obj',
				'--exclude=_obj',
				'--exclude=dep',
				'--exclude=_dep',
				'--exclude=_json',
				'--exclude=.cache',
			},
			follow = true,
			hidden = true,
			no_ignore = false,
			no_ignore_parent = false,
		},
		quickfix = {
			theme = 'ivy',
			prompt_title = "Make debug !",
			show_line = true,
			trim_text = true,
			fname_width = 20,
			-- nr = (number)   specify the quickfix list number
		},
		-- Live fuzzy search inside of the currently open buffer
		current_buffer_fuzzy_find = {
			skip_empty_lines = true
		},
		-- Lists manpage entries, opens them in a help window on <cr>
		man_pages = {
			sections = { "ALL" }
		}
	},
}

