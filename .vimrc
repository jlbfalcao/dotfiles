
set nocompatible               " be iMproved
filetype off                   " required!
syntax on

set backupdir=~/tmp
set swapfile
set dir=~/tmp

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set laststatus=2
set showmatch
set incsearch
set hlsearch
set number
" set highlight

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" required! 
Bundle 'michaeljsmith/vim-indent-object.git'
Bundle 'tpope/vim-eunuch.git'
Bundle 'tpope/vim-endwise.git'
Bundle 'gmarik/vundle'
Bundle 'skalnik/vim-vroom'
Bundle 'tagbar'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'ack.vim'
Bundle 'ctrlp.vim'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'tpope/vim-unimpaired.git'
Bundle 'FuzzyFinder'
Bundle 'endwise.vim'
Bundle 'css_color.vim'
Bundle 'vim-scripts/Rename2.git'
Bundle 'majutsushi/tagbar.git'
Bundle 'ervandew/supertab.git'
Bundle 'tComment'
Bundle 'Syntastic'
Bundle 'ZoomWin'
Bundle 'Wombat'
Bundle 'Lokaltog/vim-powerline.git'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'neocomplcache'
Bundle 'Specky'
Bundle 'tjennings/git-grep-vim.git'
Bundle 'gitv'
Bundle 'LustyJuggler'
Bundle 'ruby.vim'
Bundle 'rosenfeld/conque-term.git'
Bundle 'skwp/vim-ruby-conque.git'
Bundle 'airblade/vim-gitgutter'
Bundle 'JavaScript-Indent'

filetype plugin indent on     " required!

set wildignore=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,public/assets/*,tmp/*,coverage/*

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn|public/assets|\.jhw-cache|\.sass-cache|tmp$',
  \ 'file': '\.exe$\|\.so$\|\.dll|\.scssc$',
  \ }

"tips:
" https://github.com/garybernhardt/dotfiles/blob/master/.vimrc
"

"nmap <Leader>\i gg=G<CR>"

" indexar mais arquivos
let g:CommandTMaxFiles=20000
set guifont=Inconsolata:h18
" set guifont=Droid\ Sans\ Mono:h14
" permitir chavear entre buffers não salvos
set hidden

"colorscheme moria
"let g:colors_name="desert"
" set t_Co=256

"nmap <leader>c :colorscheme moria<cr>

" colorscheme moria
colors wombat
" colorscheme vividchalk


"edit vimrc
nnoremap <leader>ev :e ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>

" append coding header
nnoremap <leader>ac <esc>ggO# encoding: utf-8

" delete at view mode, put in blackhole register
"vmap d "_d

"nmap <silent> <C-o> :BufSurfForward<CR>
"nmap <silent> <C-i> :BufSurfBack<CR>

nmap <F11> 1G=G``
imap <F11> <esc><F11>

nnoremap <Leader>zw :ZoomWin<CR>

" http://vim.wikia.com/wiki/Easier_buffer_switching
nnoremap <Leader>l :ls<CR>
" nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>


" configuração da barra de status.
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]

" mostrar dados de erro.
let g:syntastic_enable_signs=1
let g:syntastic_warning_symbol='⚠'
let g:syntastic_auto_loc_list=1


" let g:syntastic_ruby_exec = '~/.rvm/rubies/ruby-1.9.3-p194-perf/bin/ruby'


" from: https://www.destroyallsoftware.com/file-navigation-in-vim.html
" map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
" map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
" map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
" map <leader>gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
" map <leader>gl :CommandTFlush<cr>\|:CommandT lib<cr>
" map <leader>gp :CommandTFlush<cr>\|:CommandT public<cr>
" map <leader>gs :CommandTFlush<cr>\|:CommandT public/stylesheets<cr>

map <leader>gr :topleft :split config/routes.rb<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

"comment line
map <D-/> :TComment<cr>
"comment and keep last selection
imap <D-/> <esc>:TComment<cr>
vmap <D-/> :TComment<cr>gv

" nnoremap <leader><leader> <c-^>

" Open files with <leader>f
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
" Open files, limited to the directory of the current file, with <leader>gf
" This requires the %% mapping found below.
map <leader>gf :CommandTFlush<cr>\|:CommandT %%<cr>

set wildignore=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,public/assets/*,tmp/*,coverage/*
set wildignore+=*/tmp/*,*.scssc,*/sass-cache/*,*/public/assets/*,*/cache/*,*/coverage/*,*/spec/reports/*
set wildignore+=*/log/*,*/solr/*

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn|public/assets|\.jhw-cache|\.sass-cache|tmp|coverage$',
  \ 'file': '\.exe$\|\.so$\|\.dll|\.scssc$',
  \ }

set tags+=gems.tags

if has("gui_running")
  " GRB: set font"
  ":set nomacatsui anti enc=utf-8 gfn=Monaco:h12

  " GRB: set window size"
  :set lines=100
  :set columns=171

  " GRB: highlight current line"
  :set cursorline
  set go-=T

  " Don't show scroll bars in the GUI
  set guioptions-=L
  set guioptions-=r
endif

"map <Left> :echo "no!"<cr>
"map <Right> :echo "no!"<cr>
"map <Up> :echo "no!"<cr>
"map <Down> :echo "no!"<cr>
"

" wip
function! OpenTestAlternate()
  let new_file = AlternateForCurrentFile()
  exec ':e ' . new_file
endfunction

" wip
function! AlternateForCurrentFile()
  let current_file = expand("%")
  let new_file = current_file
  let in_spec = match(current_file, '^spec/') != -1
  let going_to_spec = !in_spec
  let in_app = match(current_file, '\<controllers\>') != -1 || match(current_file, '\<models\>') != -1 || match(current_file, '\<views\>') != -1 || match(current_file, '\<helpers\>') != -1
  if going_to_spec
    if in_app
      let new_file = substitute(new_file, '^app/', '', '')
    end
    let new_file = substitute(new_file, '\.e\?rb$', '_spec.rb', '')
    let new_file = 'spec/' . new_file
  else
    let new_file = substitute(new_file, '_spec\.rb$', '.rb', '')
    let new_file = substitute(new_file, '^spec/', '', '')
    if in_app
      let new_file = 'app/' . new_file
    end
  endif
  return new_file
endfunction
" nnoremap <leader>. :call OpenTestAlternate()<cr>



function! RunTests(filename)
    " Write the file and run tests for the given filename
    :w
    exec ":!zeus rspec --color" . a:filename
    " #if match(a:filename, '\.feature$') != -1
    "     exec ":!script/features " . a:filename
    " else
    "     if filereadable("script/test")
    "         exec ":!script/test " . a:filename
    "     elseif filereadable("Gemfile")
    "         exec ":!bundle exec rspec --color " . a:filename
    "     else
    "         exec ":!rspec --color " . a:filename
    "     end
    " end
endfunction

function! RunFileTests()
  let new_file = AlternateForCurrentFile()
  RunTests(new_file)
endfunction

let g:speckyRunSpecCmd = "zeus rspec -r ~/.vim/bundle/Specky/ruby/specky_formatter.rb -f SpeckyFormatter"

let g:speckyBannerKey        = "<C-S>b"
let g:speckyQuoteSwitcherKey = "<C-S>'"
let g:speckyRunRdocKey       = "<C-S>r"
let g:speckySpecSwitcherKey  = "<C-S>x"
let g:speckyRunSpecKey       = "<C-S>s"
let g:speckyRunRdocCmd       = "fri -L -f plain"
let g:speckyWindowType       = 2


"let g:LustyJugglerSuppressRubyWarning = 1

set background=dark
colorscheme solarized

let g:neocomplcache_enable_at_startup = 1

let g:ruby_conque_rspec_runner='zeus rspec'
let g:ruby_conque_rspec_options=''
