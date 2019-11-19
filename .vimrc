" This configuration file was tested with
"       /usr/local/bin/vim (7.0) and
"       /usr/local/bin/gvim (7.0)
"this line prevents copydotfiles from recopying: dot-vimrc_included

set background=dark
set expandtab
"SS set textwidth=80
set textwidth=0
set shiftwidth=4
set tabstop=4
set ruler
set nocp
set autoindent
set smartindent
set number
set backspace=indent,eol,start
set hlsearch
"set cscopequickfix=s-,c-,d-,i-,t-,e-
"set clipboard=unnamed
"set gfn=Monospace\ 13

syntax on
set nocp
filetype on
filetype plugin indent on
fixdel

"-- omnicppcomplete setting --
set completeopt=menu,menuone
let OmniCpp_MayCompleteDot = 0 " autocomplete with .
let OmniCpp_MayCompleteArrow = 0 " autocomplete with ->
let OmniCpp_MayCompleteScope = 0 " autocomplete with ::
let OmniCpp_SelectFirstItem = 0 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype  in popup window
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DisplayMode=1
"let OmniCpp_DefaultNamespaces=["std"]

colorscheme torte
"if has("gui_running")
"    colorscheme torte
"    set lines=50 columns=170
"else
"    colorscheme desert
"    "colorscheme pablo
"endif

 if has("terminfo")
     set t_Co=8
     set t_Sf=^[[3%p1%dm
     set t_Sb=^[[4%p1%dm
 else
     set t_Co=8
     set t_Sf=^[[3%dm
     set t_Sb=^[[4%dm
 endif

noremap [6~ <PageDown>
noremap [3~ <PageUp>
onoremap [2~ ^
onoremap [5~ $

"nmap <C-D> :source ~/.dbx.vim<CR>

"nmap <C-I> :e ~/.dbx.vars<CR>

set makeprg=vmake.rb
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
map   <F5> :ls<CR>
cmap fb<Space> FuzzyFinderBuffer<CR>
nmap <F4> :cs find g <C-R>=expand("<cword>")<CR><CR>

nmap <F11> :wa<cr>:TlistUpdate<cr>:FirstExplorerWindow<cr><F5><c-w>b
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
nnoremap <silent> <F12> :A<CR>
nnoremap <silent> <F10> :on<CR>:vsplit<CR>:A<CR>
"nmap <F10> :on<CR>:vsplit<CR>:A<CR>
nnoremap <silent> <F3> :Rgrep<CR>

set ignorecase
set smartcase
set incsearch

hi Folded ctermfg=white
set tags=tags

set diffopt+=iwhite

:map! jj <ESC>

set rtp+=/usr/local/opt/fzf
