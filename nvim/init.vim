" -- N E O V I M  C O N F I G -------------------------------------------------


" -- L U A  C O N F I G -------------------------------------------------------

" call setup.lua file
lua <<EOF
	require('setup')
EOF



" remove '_' from iskeyword
" goal is when we press 'w', cursor stop at '_' character
set iskeyword-=_


" split equaly
"set noequalalways




set colorcolumn=80





" -- M O U S E  C O N F I G ---------------------------------------------------

" disable mouse










" character that form pair
set matchpairs=<:>,[:],(:),{:}


"set virtualedit=all

au TextYankPost * silent! lua vim.highlight.on_yank {higroup="Constant", timeout=256}








" main guicursor shape
let g:mainCursor="n-sm:block,i-c-ci:ver25,v-ve-o-r-cr:hor25"
" guicursor shape at exit
let g:exitCursor="a:ver25"

let &guicursor=mainCursor

augroup cursorManager
	autocmd!
	autocmd VimLeave * let &guicursor=exitCursor
	autocmd VimResume * let &guicursor=mainCursor
	autocmd VimSuspend * let &guicursor=exitCursor
augroup END




" -- T E R M I N A L  S E T T I N G S ----------------------------








" Enable filetype detection for plugins and indentation options
filetype plugin indent on


" bases detecting numbers (CTRL-A and CTRL-X)
set nrformats=alpha,octal,hex,bin
" ~ empty lines at the end of a buffer
set fillchars=eob:-



" time to wait mapped sequence complete
"set timeoutlen=250
"set timeout
set ttimeout
"set timeoutlen=0
"set ttimeoutlen=0



" -- I N D E N T A T I O N  S E T T I N G S -----------------------------------

" new lines inherit previous line indentation
set autoindent
set smartindent
set cindent

" Insert tabs instead of spaces
set noexpandtab
" The length of a tab
set tabstop=4
" Number of spaces inserted when autoindentation is used
set shiftwidth=4
" Number of spaces inserted when tab is pressed
set softtabstop=4

set shiftround



" -- F I L E T Y P E  S E T T I N G S -----------------------------------------


set encoding=utf-8


"---------------------- D I S P L A Y  ! ! !
" don't redraw screen during macro and script execution
set lazyredraw
" current line number
set number
" jump number line
set relativenumber

set signcolumn=number

" hightlight current line
set cursorline
" don't display vim mode
set noshowmode
set showcmd
"set noruler
"set sidescrolloff=300
set scrolloff=50
set wrap
set nolinebreak

"set wildmenu
"set wildmode=full

set noerrorbells
set novisualbell


" -- S E A R C H  S E T T I N G S ---------------------------------------------

" Ignore case on search
"set ignorecase
" Don't highlight matched strings
" Move cursor to the matched string
set incsearch


"set infercase "good and bad !!!


" -- F I L E  S E T T I N G S -------------------------------------------------

" hide files in the background instead of closing them
set hidden
" Reload a file when it is changed from the outside
set autoread
" don't save backup file
set nobackup
" don't save swap file
set noswapfile










" M O D E S
" ---------
" normal backspace comportment
set backspace=indent,eol,start



" A U T O  C O M M A N D S
" ------------------------
augroup AutoCursorLine
	autocmd!
	" enable cursorline in active window
	au WinEnter * set cursorline
	" disable cursorline in inactive window
	au WinLeave * set nocursorline
	" enable cursorline in normal mode
	au InsertLeave * set cursorline
	" disable cursorline in insert mode
	au InsertEnter * set nocursorline
augroup END


" L I S T  C H A R S
" ------------------
" display unprintable characters
set list

" tabulations
"set						listchars=tab:\│\ ,
set listchars=tab:\.\.,     "this was current

" start spaces
set listchars+=lead:\.

" end spaces
set listchars+=trail:•

" wrap right
set listchars+=extends:»

" wrap left
set listchars+=precedes:«

" new line
"set						listchars+=eol:↓
"set						listchars+=space:\.
"set						listchars+=nbsp:\|

function! MyTabLine()
    let s = ''
	" loop over each tab page
    for i in range(tabpagenr('$'))
		" vim array index starts at 1
        let tab = i + 1
		" get the current tab page number
        let winnr = tabpagewinnr(tab)
		" get the current buffer number
        let buflist = tabpagebuflist(tab)
		" get the current buffer name
        let buf = buflist[winnr - 1]

		" get the current file name
        let file = bufname(buf)
		" get the current file name without path
        let file = fnamemodify(file, ':t')
        if tab == tabpagenr()
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif
        let s .= ' ' . file . ' '
    endfor
    let s .= '%T%#TabLineFill#%='
    let s .= (tabpagenr('$') > 1 ? '%#TabLine#%999XX' : 'XX')
    return s
endfunction

" always show tabline
set showtabline=2
set tabline=%!MyTabLine()

" S T A T U S  L I N E
" --------------------
"
" global statusline at the bottom instead of one for each window
set						laststatus=3
"filename
set						statusline+=%f
"justifiy to right
set						statusline+=%=
"colorscheme
set						statusline+=%{g:colors_name}
" current line
set						statusline+=\ %04l/
" total line
set						statusline+=%04L
" filetype
set						statusline+=\ %y
" fileformat
set						statusline+=\ %{&ff}
" fileencoding
set						statusline+=\ %{strlen(&fenc)?&fenc:'none'}
" current time
set						statusline+=\ %{strftime(\"%H:%M\")}


set statusline+=%{&endofline?'':'[noeol]'}





"set completeopt=menu,menuone,noselect

" C O L O R S
" -----------
" enable syntax highlight
syntax on
" enable 24bit colors
set termguicolors
"colorscheme tokyonight-moon
"colorscheme base2tone_space_dark
"colorscheme base2tone_sea_dark
colorscheme spaceduck


" delete comment characters when joining lines
"set formatoptions+=jql
au BufEnter * set fo-=c fo-=r fo-=o


"""""""""""""""""""""" REGLAGES PERSO """""""""""""""""""""""""""""""

"""""""""" Options principales """"""""""""

let mapleader = ";"
set mouse=a
set hlsearch
set timeoutlen=300
set splitright
set splitbelow

vnoremap <C-c> :!xclip -selection clipboard<Cr><esc>u

nnoremap <C-n> :NvimTreeToggle<cr>

nnoremap <leader>f :Telescope find_files<cr>
nnoremap <leader>l :Telescope live_grep<cr>
"nnoremap <leader>fb :NvimTreeToggle<cr>

"""""""""""""""" Buffers """"""""""""""""""
nnoremap <C-b> <esc>:bnext<cr>
inoremap <C-b> <esc>:bnext<cr>

""""""""""""""" split vim """""""""""""""""

"ouvrir un split
nnoremap <leader>j :vs useless_file<cr>
nnoremap <leader>jj :split useless_file<cr>

" Pour que le split ne resplit pas le split actuel mais s'effectue en dehors des autres
nnoremap <leader>jk :botright vs useless_file<cr>
nnoremap <leader>jjk :botright split useless_file<cr>

"Navigation entre les split vim
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

"Redimenssionner les split
nnoremap <S-i> <C-w>+
nnoremap <S-o> <C-w>-

nnoremap <C-i> <C-w><
nnoremap <C-o> <C-w>>

"Focus sur un split (ouvre le split dans une nouvelle tab)

nnoremap <leader>n <esc>:tab split<cr>:vsplit useless<cr><C-w><C-r>50<C-w><<C-w>l
nnoremap <leader>nn <esc>:tabc<cr>

"Sessions vim pour enregistrer les fenetres ouvertes
"nnoremap <C-m><C-k> :mksession!<cr>
nnoremap <leader>mk :mksession!<cr>


""""""""""""""" split tabs """""""""""""""""

"" cycle tabs
nnoremap <leader>kk <esc>:tabnext<cr>
nnoremap <leader>kj <esc>:tabprevious<cr>

"create tab
nnoremap <leader>kn <esc>:tabnew<cr>

"" move tab
nnoremap <leader>ko <esc>:tabmove +1<cr>
nnoremap <leader>ki <esc>:tabmove -1<cr>

""""""""" Manipulation des fichiers """"""""

"Quitter
"nnoremap <C-d> :q<cr>
nnoremap <leader>q :q<cr>

"nnoremap <C-d><C-d> :qa<cr>
nnoremap <leader>qq :qa<cr>

"nnoremap <C-d><C-d><C-f> :qa!<cr>
nnoremap <leader>qqf :qa!<cr>

"Enregistrer
"nnoremap <C-s> :w<cr>
nnoremap <leader>s :w<cr>

"nnoremap <C-s><C-s><C-f> :wa<cr>
nnoremap <leader>ssf :wa<cr>

""""""""""""""""""' LSP """""""""""""""""""

nnoremap <leader>h :lua vim.lsp.buf.hover()<cr>

""""""""""""" SCRIPTS BASH """"""""""

""Transcendance : kill google chrome et lancer 2 nouvelles fenetres avec 2 utilisateurs
nnoremap <C-l> :!jjjkill<cr><cr>

""""""""""""""""""""""""""""""""""""""""""""""""

"nnoremap <leader>e :silent UcgGenerate<cr>


"colorscheme ucg
