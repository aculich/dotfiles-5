" open nerdree with ,l
nmap <leader>l :NERDTreeToggle<cr>

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


