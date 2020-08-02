" Get the defaults that most users want.
" source $VIMRUNTIME/defaults.vim

" set runtimepath
set rtp^=~/.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")


" ===== KEY MAPPINGS =====
" remap Escape key
inoremap fd <Esc>

" use fd to exit terminal
:tnoremap fd <C-\><C-n>

" map leaders
let mapleader = ";"
let maplocalleader = ","


" ===== COLORS =====
" use truecolor
set termguicolors

" fix repl bg
highlight Pmenu ctermbg=DarkGray guibg=DarkGray

" use purple theme
colorscheme "anemones-light"

" use alacritty color scheme
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256          " Remove this line if not necessary
  source ~/.vimrc_background
endif

call plug#begin('~/.vim/plugged')
Plug 'bakpakin/janet.vim'
Plug 'bakpakin/fennel.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'
Plug 'lambdalisue/fern.vim'
Plug 'mbbill/undotree'
Plug '907th/vim-auto-save'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ajh17/VimCompletesMe'
Plug 'neovim/nvim-lsp'

" almost all langs highlighting, linting
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
call plug#end()

Plug 'Olical/conjure', {'tag': 'v3.4.0'}


" ============================================================================ "
" ===                           PLUGIN SETUP                               === "
" ============================================================================ "


" ===== Fern =====
let g:fern#disable_default_mappings = 1

" toggles a left-hand side project drawer
noremap <silent> <Leader>d :Fern . -drawer -width=35 -toggle<CR><C-w>=

" opens fern and reveals the current buffer in the file tree
noremap <silent> <Leader>f :Fern . -drawer -reveal=% -width=35<CR><C-w>=

" opens just the directory of sibling files of the current buffer
noremap <silent> <Leader>. :Fern %:h -drawer -width=35<CR><C-w>=


function! FernInit() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-open-expand-collapse)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:select)",
        \   "\<Plug>(fern-action-expand)",
        \   "\<Plug>(fern-action-collapse)",
        \ )
  nmap <buffer> <CR> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> <2-LeftMouse> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> N <Plug>(fern-action-new-file)
  nmap <buffer> K <Plug>(fern-action-new-dir)
  nmap <buffer> D <Plug>(fern-action-remove)
  nmap <buffer> H <Plug>(fern-action-hidden-toggle)j
  nmap <buffer> R <Plug>(fern-action-reload)
  nmap <buffer> m <Plug>(fern-action-mark-toggle)j
  nmap <buffer> s <Plug>(fern-action-open:split)
  nmap <buffer> v <Plug>(fern-action-open:vsplit)
  nmap <buffer><nowait> < <Plug>(fern-action-leave)
  nmap <buffer><nowait> > <Plug>(fern-action-enter)
endfunction

augroup FernGroup
  autocmd!
  autocmd FileType fern call FernInit()
augroup END


" ===== undotree =====
let g:undotree_HighlightChangedWithSign = 0
let g:undotree_WindowLayout             = 4
let g:undotree_SetFocusWhenToggle       = 1
nnoremap <Leader>u :UndotreeToggle<CR>

" ===== autosave =====
let g:auto_save        = 1
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged", "FocusLost"]
