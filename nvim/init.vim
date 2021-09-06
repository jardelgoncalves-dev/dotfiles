syntax on
filetype off

call plug#begin('~/.vim/plugged')
Plug 'ntpeters/vim-better-whitespace'
Plug 'erickzanardo/vim-xclip'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'isRuslan/vim-es6'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'othree/html5.vim'

"vim snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"vim git
Plug 'APZelos/blamer.nvim'
Plug 'airblade/vim-gitgutter'

"vim javascript
Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'othree/es.next.syntax.vim', {'for': 'javascript'}

"vim typescript
Plug 'leafgarland/typescript-vim'

"vim styled components
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"highlight to jsx and tsx
Plug 'maxmellon/vim-jsx-pretty'

"vim less/sass
 Plug 'groenewege/vim-less'
 Plug 'cakebaker/scss-syntax.vim'

"css highlight color
Plug 'ap/vim-css-color'

"vim docker
Plug 'ekalinin/dockerfile.vim'

"search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'

"linter
Plug 'w0rp/ale'

"coc vim completation
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"theme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'
Plug 'mhartington/oceanic-next'

"icons
Plug 'ryanoasis/vim-devicons'

call plug#end()

"git blame config
let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_prefix = ' '
let g:blamer_relative_time = 1
highlight Blamer guifg=lightgrey

set hidden
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set mouse=a
set number
set encoding=UTF-8
set guifont=Fira\ Code:h12:

"config coc.vim
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=yes
autocmd CursorHold * silent call CocActionAsync('highlight')

"vim snippets config
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

filetype plugin on


"airline set theme
let g:airline_theme='deus'
let g:airline_powerline_fonts = 1

" Status bar plugin airline
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" vim javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" ctrlp ignore folders
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"NerdTree hidden files
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.swp$', '\.pyc$']

"set background=dark
let g:airline_theme='onedark'

"Onedark theme
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1
let g:onedark_hide_endofbuffer=1
let g:onedark_color_overrides = {
      \ "purple": { "gui": "#56B6C2", "cterm": "170", "cterm16": "5" }
      \}
syntax enable
colorscheme onedark

"Tmux config
if exists('$TMUX')
  " Colors in tmux
  let &t_8f = "<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "<Esc>[48;2;%lu;%lu;%lum"
endif

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

map <c-b> :NERDTreeToggle<CR>
map <c-d> :NERDTreeFind<CR>

let mapleader="\<space>"

nnoremap <leader>w :w<CR>
nnoremap <leader>; A;<esc>  "add ; end line
nnoremap <leader>W :wincmd k<CR> " go window up
nnoremap <leader>S :wincmd j<CR> " go window down
nnoremap <leader>A :wincmd h<CR> " go window left
nnoremap <leader>D :wincmd l<CR> " go window right
nnoremap <leader>v :vertical :new<CR> " open new vertical window
nnoremap <leader>h :new<CR>           " open a new horizontal window
nnoremap <leader>q :q<CR>             " it quit current vim buffer
nnoremap <leader>Q :q!<CR>            " it force quit current vim buffer
nnoremap <leader>t :tabnew<CR>        " create a new tab
nnoremap <leader>pt :tabprevious<CR>   " move to previous tab
nnoremap <leader>nt :tabnext<CR>       " move to next tab

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>

nnoremap <c-f> :Ag<space>

