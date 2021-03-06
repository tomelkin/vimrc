map <C-s> :w<CR>
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-c> <C-w>c

map <Leader><Leader> :ZoomWin<CR>
nmap <D-BS> :bd<CR>
nmap <D-e> :NERDTreeToggle<CR>
nmap <Leader>gf :NERDTreeFind<CR>
nmap <D-y> :FufBuffer<CR>
nmap <D-r> :!ctags -R .<CR>
nmap <Leader>fo :set foldmethod=syntax<CR>
nmap <silent> <Leader>fb :FufBuffer<CR>
nmap <silent> <Leader>ft :FufTaggedFile<CR>
nmap <silent> <Leader>fl :FufLine<CR>

" nmap <silent> <Leader>fd :FufDirWithCurrentBufferDir<CR>

" map <F2> :.s/^"\(.*\)"$/\1/<CR>:.!xmllint --format - 2> /dev/null<CR>
map <F2> :.w !sed 's/^[^<]*\(.*\)/\1/'\|xmllint --format - 2> /dev/null<CR>
map <F2> :.!sed 's/^[^<]*\(.*\)/\1/'\|xmllint --format - 2> /dev/null<CR>
map <F3> :set paste!<CR>
map <F4> :set background=light<CR>:colorscheme solarized<CR>
map <F5> :colorscheme vividchalk<CR>
map <F6> :colorscheme jellybeans+<CR>
map <F7> :colorscheme molokai<CR>
map <F8> :set hls!<CR>
map <F10> :set modifiable<CR>


if has("gui_macvim")
    macmenu &File.New\ Tab key=<nop>
    map <D-t> :CommandT<CR>
endif
