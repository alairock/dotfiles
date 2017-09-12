" Set leader
let mapleader = ','

" Shortcut to save
nmap <leader>, :w<cr>

" edit ~/.config/nvim/init.vim
map <leader>ev :e! ~/.config/nvim/init.vim<cr>


" clear highlighted search
noremap <space> :set hlsearch! hlsearch?<cr>


" remove extra whitespace
nmap <leader><space> :%s/\s\+$<cr>
nmap <leader><space><space> :%s/\n\{2,}/\r\r/g<cr>

" Tab indent shortcut
nmap <leader>[ <<
nmap <leader>] >>

" enable . command in visual mode
vnoremap . :normal .<cr>

" buffers/files
nmap <leader>b :Buffers<cr>
nmap <leader>f :Files<cr>

" splits
nmap <leader>v :vsplit <cr>
nmap <leader>- :split <cr>


" Move windows
map <silent> <C-n> :call functions#WinMove('h')<cr>
map <silent> <C-u> :call functions#WinMove('j')<cr>
map <silent> <C-e> :call functions#WinMove('k')<cr>
map <silent> <C-i> :call functions#WinMove('l')<cr>


" move window
nnoremap <leader><Down> <C-W><C-J> 
nnoremap <leader><Up> <C-W><C-K>
nnoremap <leader><Right> <C-W><C-L>
nnoremap <leader><Left> <C-W><C-H>

" quit
map <leader>wc :wincmd q<cr>


