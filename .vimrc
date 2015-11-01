set nocompatible
set autoread

set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdTree'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'bling/vim-airline'
NeoBundle 'gertjanreynaert/cobalt2-vim-theme'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'terryma/vim-multiple-cursors'


" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell'

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

call neobundle#end()

" Required:
filetype plugin indent on

if v:version >= 703
  syntax enable
  set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
  set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
  set number
  set linebreak
  set textwidth=120
  set showmatch
  set visualbell
  set t_vb=

  set smartcase
  set ignorecase
  set incsearch

  set autoindent
  set cindent
  set expandtab
  set shiftwidth=2
  set softtabstop=2
  set smartindent
  set smarttab
  set list listchars=tab:⟶\ ,trail:·,extends:>,precedes:<,nbsp:%
  set ttyfast

  " split to right and below
  set splitbelow
  set splitright
  set scrolloff=999
  set cursorline

  set ruler
  set undolevels=1000
  set backspace=indent,eol,start

  " code folding
  set foldmethod=syntax
  set nofoldenable
  set foldlevel=1

  set title

  " code folding
  set foldmethod=indent

  " ui
  set wildmenu " enhanced comman line completion

  " move between splits with c + hjkl
  map <C-J> <C-W>j
  map <C-K> <C-W>k
  map <C-H> <C-W>h
  map <C-L> <C-W>l

  " airline options
  let g:airline_powerline_fonts=1
  let g:airline_left_sep=''
  let g:airline_right_sep=''
  let g:airline_theme='bubblegum'
  set t_Co=256
  set laststatus=2

  let g:gitgutter_realtime=1
  set updatetime=750

  " tab completion
  imap <Tab> <C-P>

  if exists("g:ctrl_user_command")
    unlet g:ctrlp_user_command
  endif
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/bower_components/*,*/node_modules/*  " MacOSX/Linux

  " only show files that are not ignored by git
  let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

  let mapleader = ","

  " shortcut to save
  nmap <leader>s :w<cr>

  colorscheme cobalt2

  " open nerdree with ,k
  nmap <leader>k :NERDTreeToggle<cr>
  " show hidden files in NERDTree
  let NERDTreeShowHidden=1
  " remove some files by extension
  let NERDTreeIgnore = ['\.js.map$', '.git', 'node_modules', 'bower_components', '.sass-cache', '.tmp']
  " close nerdtree when file was opened
  let g:NERDTreeQuitOnOpen=1
  " open in new tab by default
  let NERDTreeMapOpenInTab='<ENTER>'
  " expand to the path of the file in the current buffer
  nmap <silent> <leader>y :NERDTreeFind<cr>
  let NERDTreeMinimalUI=1
  let NERDTreeDirArrows=1

  " prevent entering to ex mode
  nnoremap Q <nop>

  autocmd Filetype gitcommit setlocal spell textwidth=72

endif
