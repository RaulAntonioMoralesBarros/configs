"  -----------------------------
" |  Plugins configurados:	|
" |				|
" | - NERDtree     		|	
" | - Vim-airline 		|
" | - UntiSnips			|
" | - easymotion		|
" | -				|
"  -----------------------------


"--------"
"NERDtree"
"--------"
map <C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=0 " Press I to toggle hidden files
let NERDTreeQuitOnOpen=1
let NERDTreeDirArrows=1
let NERDTreeChDirMode=2
let NERDTreeHighlightCursorline=1
autocmd StdinReadPre * let s:std_in=1 " Open NerdTree on launch if no file selected
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif " Close vim if only NerdTree open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " Close vim if only NerdTree open


"-----------"
"Vim-airline"
"-----------"
set encoding=utf-8
set guifont=Meslo\ LG\ M\ for\ Powerline	"Install the font on host Putty 'powerline/fonts'
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
set term=xterm-256color
set laststatus=2	" Always show the status bar
set showtabline=2
set noshowmode	"Hide the default mode text


"---------"
"UntiSnips"
"---------"
let g:UltiSnipsExpandTrigger="<Leader>sn"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"-----"
"CtrlP"
"-----"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*.swp,*.zip,*.so,*/tmp/*





"vim-blade

" Define some single Blade directives. This variable is used for highlighting
" only.
 let g:blade_custom_directives = ['datetime', 'javascript']

" Define pairs of Blade directives. This variable is used for highlighting
" and indentation.
 let g:blade_custom_directives_pairs = {
       \   'markdown': 'endmarkdown',
             \   'cache': 'endcache',
                   \ }


 "Vim pathogen
 
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_wq = 0

"php.vim
"


function! PhpSyntaxOverride()
    " Put snippet overrides in this function.
  hi! link phpDocTags phpDefine
  hi! link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
