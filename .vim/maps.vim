"  -----------------------------
" |  Atajos configurados:	|
" |				|
" | - NERDtree     		|
" | - easymotion		|
" | - Commentary		|
"  -----------------------------

let mapleader=" "

"--------"
"NERDtree"
"--------"
nmap <Leader>nt :NERDTreeFind<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR> 
map <C-n> :tabnew<CR> 

"----------"
"easymotion"
"----------"
"Busqueda de 2 caracteres
nmap <Leader>s <Plug>(easymotion-s2) 
"Busqueda de N caracteres
map  <Leader>/ <Plug>(easymotion-sn)
" Moverse por linea
map <Leader>l <Plug>(easymotion-bd-jk) 
nmap <Leader>l <Plug>(easymotion-overwin-line)


"Guardar y salir
nmap <Leader>w :w<CR> 
nmap <Leader>q :q<CR> 


"----------"
"Commentary"
"----------"
"comenta una linea
map <Leader>cc gcc <Plug>
"comenta varias lineas seleccionadas
map <Leader>cx gc <Plug>
"descomentar
map <Leader>cz gcgc <Plug>


"---------"
"clipboard"
"---------" 
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d
vnoremap <C-c> "*` 

"--------"
"Surround"
"--------"
nmap <Leader>m cs"'<Plug>
nmap <Leader>mn ds<Plug>


