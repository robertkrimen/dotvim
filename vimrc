filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
filetype plugin on
syntax on

call lvimrc#install()

set nocompatible

set background=dark
colorscheme clouds_midnight

set modelines=10

set term=linux

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround

set nofoldenable
set encoding=utf-8
set scrolloff=5
set autoindent
set cindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set nocursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
"set undofile

let mapleader = "m"

"nnoremap / /\v
"vnoremap / /\v
set ignorecase
set smartcase
set nogdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"set wrap
"set textwidth=79
set formatoptions=qrn1

"set list
"set listchars=tab:▸\ ,eol:¬

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"nnoremap ; :
"nnoremap l :

"nnoremap <leader>w <C-w>v<C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"nnoremap <Down> j
"vnoremap <Down> j
"nnoremap <Up> k
"vnoremap <Up> k

"autocmd FileType fuf inoremap <buffer> <Tab> <C-n>
"autocmd FileType fuf inoremap <buffer> <S-Tab> <C-p>
"
let g:netrw_dirhistmax = 0

let g:bufExplorerDetailedHelp = 1
let g:bufExplorerShowRelativePath = 1
let g:bufExplorerSortBy = 'mru'

let g:NERDTreeQuitOnOpen = 1
let g:NERDRemoveExtraSpaces = 0

vmap <leader>c <plug>NERDCommenterAlignLeft
nmap <leader>c <plug>NERDCommenterAlignLeft
vmap \c <plug>NERDCommenterAlignLeft
nmap \c <plug>NERDCommenterAlignLeft

vmap <leader>C <plug>NERDCommenterUncomment
nmap <leader>C <plug>NERDCommenterUncomment
vmap \C <plug>NERDCommenterUncomment
nmap \C <plug>NERDCommenterUncomment

noremap <leader>R :call ROKRReset()<cr>

nmap <leader>vs :source $MYVIMRC<cr>
nmap <leader>ve :e $MYVIMRC<cr>

noremap <leader>a :FSHere<cr>
noremap <leader>q :b#<cr>
"noremap <C-w><C-w> :b#<cr>
noremap <leader>w :FufBuffer<cr>
noremap <leader>e :FufFile<cr>
noremap <leader>3 :FufCoverageFile<cr>
noremap <leader>r :FufTag<cr>
"noremap <c-w><c-e> :BufExplorer<cr>
"nmap \be :BufExplorer<cr>
noremap <leader>t :NERDTreeToggle<cr>:only<cr>
"noremap <c-w><c-r> :NERDTreeToggle<cr>:only<cr>
"nmap \br :NERDTreeToggle<cr>:only<cr>
noremap <c-c><c-c> :wq<cr>
noremap <leader>cc :wq<cr>
noremap <leader>QQ :qall!<cr>

noremap <leader><leader>w :write<cr>
noremap <leader><leader>e :edit<cr>
noremap <leader>l :redraw!<cr>
noremap <leader>; :write<cr>
noremap <leader>, m

noremap <leader>] :cn<cr>
noremap <leader>[ :cp<cr>
noremap <leader><leader>[ :ccl<cr>
noremap <leader><leader>] :cope<cr>
noremap <leader>\ :call clearmatches()<cr>

au! FileType fuf inoremap <buffer> <Tab> <cr>
au BufLeave * call ROKRBufLeave()
au VimLeave * call ROKRVimLeave()
au BufNewFile,BufRead *.as set filetype=actionscript
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead GNUmakefile.* setf make
au BufNewFile,BufRead .GNUmakefile.* setf make
au BufNewFile,BufRead ?akefile* set noet ts=8 sw=8 sts=0
au BufNewFile,BufRead *.Makefile* set noet ts=8 sw=8 sts=0
au BufNewFile,BufRead GNUmakefile* set noet ts=8 sw=8 sts=0
au FileType perl set makeprg=perl\ -c\ %
au FileType javascript map <buffer> <leader>` :JSHint<cr>:cc<cr>

function! ROKRBufLeave()
    if expand( '%' )
        if &modifiable
            write
      endif
    endif
endfunction

function! ROKRVimLeave()
    if filewritable( v:this_session )
        exe "mks! " . v:this_session
    endif
endfunction

function! ROKRReset()
    let v:this_session = ""
    if filewritable("Session.vim")
        exe "silent !rm Session.vim"
    endif
    exe "quit"
endfunction

map <f2> i<c-r>=strftime("%a %b %d %t %z %y")<cr><esc>
imap <f2> <c-r>=strftime("%A %B %d %T %Z %Y")<cr>

"set backupdir=~/tmp/
"set directory=~/tmp/

map <leader>` :make<cr>
map <leader>i :set invpaste<cr>
"set colorcolumn=85

finish

function! GitWipSave()
  return
endfunction

"""""""""
"       "
"  _0_  "
"       "
"""""""""

nmap <f10> :set invpaste<cr><esc>
imap <f10> :set invpaste<cr><esc>
map <F8>a :ClipBrd a<cr>
map <F8>y :ClipBrd y<cr>
map <F8>q :ClipBrd q<cr>
nmap <f9> :%!perltidy -q<cr>

map <silent> <Leader>w <c-b>
map <silent> <Leader>q <c-f>
map <silent> <Leader>F gg<Plug>SimpleFold_Foldsearch
noremap <c-k> :
noremap <m-c> :
noremap <c-w><c-m> :w<cr>
noremap <c-c><c-m> :w<cr>
noremap <c-c><c-x> :cq!<cr>
noremap <c-c><m-c> :cq!<cr>
noremap <m-h> 10h
noremap <m-k> 10k
noremap <m-l> 10l
syntax on

filetype plugin on

map g0 :tabfirst<cr>

set softtabstop=4 
set shiftwidth=4 
set tabstop=4 
set expandtab 

aug custom
    au!
    au BufNewFile,BufRead * set et ts=4 sw=4 sts=4
    au BufNewFile,BufRead httpd.*.conf setf apache
    au BufNewFile,BufRead *.httpd.conf setf apache
    au BufRead,BufNewFile *.lbi set ft=html
    au BufNewFile,BufRead *.tt2.html set ft=html
    au BufNewFile,BufRead *.tt.html set ft=html
    au BufNewFile,BufRead *.as set filetype=actionscript
    au BufNewFile,BufRead *.dt.* set ft=django
    au BufNewFile,BufRead *.dt set ft=django
    au BufNewFile,BufRead *.dt.html set ft=htmldjango
    au BufRead,BufNewFile *.js compiler js
    au VimLeave * call VimLeave()
    au BufNewFile,BufRead GNUmakefile.* setf make
    au BufNewFile,BufRead .GNUmakefile.* setf make
    au BufNewFile,BufRead ?akefile* set noet ts=8 sw=8 sts=0
    au BufNewFile,BufRead *.Makefile* set noet ts=8 sw=8 sts=0
    au BufNewFile,BufRead GNUmakefile* set noet ts=8 sw=8 sts=0
    au BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
    au BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
    au BufReadPost *
        \ if ! exists("g:leave_my_cursor_position_alone") |
        \     if line("'\"") > 0 && line ("'\"") <= line("$") |
        \         exe "normal g'\"" |
        \     endif 
aug END

set ttymouse=xterm

command! MapPurge mapc <buffer> | mapc
command! MapPurgeFroct mapc <buffer> | mapc | q!

set ttymouse=xterm

"let g:html_map_leader = ';'
"let g:html_map_leader = ''
"let g:html_tag_case = 'lower'
"let b:tt2_syn_tags = '\[% %] <% %>'
let g:persistentBehaviour=0
let g:EnhCommentifyUserMode="Yes"

"let g:bufExplorerSortBy='fullpath'

helptags ~/.vim/doc
if filereadable(expand("~/.vimrc.local"))
    source $HOME/.vimrc.local
endif

let g:perl_simplefold_expr = '\v(^\s*(sub)>\s)'
let g:perl_simplefold_end_expr = '\v(^\s*(1\;$|\#\@))'
let g:perl_simplefold_prefix = '\v^\s*(#([^@{]+|\{[^{]|\{\{[^{])*)?$'

function! ToggleFlakiez() 
    let buffername = bufname("%")
    let idx = match(buffername, "/flakiez$")
    if -1 == idx
        write
        edit ~/profile/flakiez
    else
        write
        edit #
    endif
endfunction
"noremap <silent> <Leader>f :w<cr>:edit $HOME/wallet/flakiez<cr>
"noremap <silent> <Leader>f :call ToggleFlakiez()<cr>
noremap <c-w><c-f> :call ToggleFlakiez()<cr>

function! InsertPerlScriptBoilerplate()
    exe "normal i#!/usr/bin/env perl\n\nuse strict;\nuse warnings;\n\n__END__\n\n\<esc>"
    set filetype=perl
endfunction 
map <silent> <Leader>pp :call InsertPerlScriptBoilerplate()<cr>

function! InsertPerlTestBoilerplate()
    exe "normal i#!/usr/bin/env perl\nuse strict;\nuse warnings;\nuse Test::Most;\ndone_testing;\<esc>"
    set filetype=perl
endfunction 
map <silent> <Leader>pt :call InsertPerlTestBoilerplate()<cr>

function! InsertPerlModuleBoilerplate()
    exe "normal ipackage\n\nuse strict;\nuse warnings;\n\n__END__\n\n\<esc>"
    set filetype=perl
endfunction 
map <silent> <Leader>pm :call InsertPerlModuleBoilerplate()<cr>
"let g:perl_simplefold_expr =
"     \ '\v(^\s*(package|use|sub)>\s)'
"let g:perl_simplefold_prefix = '\v^\s*(#([^{]+|\{[^{]|\{\{[^{])*)?$'
"
"    au FileType make :inoremap <buffer><silent><space> <space><c-o>:call MapSpaceInMakefile()<cr>
"
"function! MapSpaceInMakefile()
"    " if this space is 8th space from the beginning of line, replace 8 spaces with
"    " one tab (only at the beginning of file)
"    let line = getline('.')
"    let col = col('.')
"set backupdir=~/.vimbackup//
"set directory=~/.vimswap//

"    if strpart(line, 0, 8) == '        '
"        let new = "\t" . strpart(line,8)
"        call setline('.', new )
"    endif

"    return ""
"endfunction 
"function! InsertHashMapping_()
"    let mapping_name = input("Enter mapping name: ")
"    if mapping_name == ""
"        return
"    endif
"    exe "normal a".mapping_name." => $".mapping_name.",\<esc>"
"endfunction 

"map HH :call InsertHashMapping_()<cr>
"map <silent> <Leader>H :call InsertHashMapping_()<cr>

".       " mark the position of the cursor
".       execute "normal ma"
".       " ask for footnote text
".       let footNoteText = input("enter text for footnote: ")
".       " was there already a footnote?
".       if search("\[[0-9]*]", "w")
".       .       " yes => get the number, copy it, increase
".       .       " it, put it at the footnote position, put
".       .       " the footnote text and position the cursor back.
".       .       execute "normal G$?\[[0-9]*\]\<enter>yt]:call GotoFootNoteLocation()\<LF>$i\<end>\<enter>\<esc>p\<C-a>i\<end>] " . footNoteText .  "\<esc>`aP\<C-a>\<right>i]\<esc>"
".       else
".       .       " no => put [0], add at the end [0] + footnote text
".       .       " and position cursor back
".       .       execute "normal i[0]\<esc>:call GotoFootNoteLocation()\<LF>$i\<end>
"\<enter>\<enter>[0] " . footNoteText . "\<esc>`a"
".       endif
