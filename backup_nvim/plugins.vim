
" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

call plug#begin('~/.config/nvim/plugged')

" === Editing Plugins === "

" Trailing whitespace highlighting & automatic fixing
Plug 'ntpeters/vim-better-whitespace'

" auto-close plugin
Plug 'rstacruz/vim-closer'

" Improved motion in Vim
Plug 'easymotion/vim-easymotion'

" Intellisense Engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Denite - Fuzzy finding, buffer management
Plug 'Shougo/denite.nvim'

" Snippet support
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Print function signatures in echo area
Plug 'Shougo/echodoc.vim'

" === Git Plugins === "
" Enable git changes to be shown in sign column
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" === Javascript Plugins === "
" Typescript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" ReactJS JSX syntax highlighting
Plug 'mxw/vim-jsx'

" Generate JSDoc commands based on function signature
Plug 'heavenshell/vim-jsdoc'

" === Syntax Highlighting === "

" Syntax highlighting for nginx
Plug 'chr4/nginx.vim'

" Syntax highlighting for javascript libraries
Plug 'othree/javascript-libraries-syntax.vim'

" Improved syntax highlighting and indentation
Plug 'othree/yajs.vim'

" === UI === "
" File explorer
Plug 'scrooloose/nerdtree'

" Colorscheme
Plug 'mhartington/oceanic-next'

" Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"  Nord Vim themes

Plug 'arcticicestudio/nord-vim'

" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" My additional plugins

" Tmux vim smart navigator
Plug 'christoomey/vim-tmux-navigator'

" Emmet plugin for HTML/CSS
Plug 'mattn/emmet-vim'

" Files comments
Plug 'preservim/nerdcommenter'

" For Editor Config
Plug 'editorconfig/editorconfig-vim'

" Syntactic language support
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'rhysd/vim-clang-format'


" There have been many attempts at bringing Sublime Text's awesome multiple selection feature into Vim,
Plug 'terryma/vim-multiple-cursors'

" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
Plug 'tpope/vim-surround'

" Vim sugar for the UNIX shell commands that need it the most. Features include:
Plug 'tpope/vim-eunuch'

" Distraction-free writing in Vim
Plug 'junegunn/goyo.vim'

" VimWiki A Personal Wiki For Vim
Plug 'vimwiki/vimwiki'

" A collection of language packs for Vim.
" Plug 'sheerun/vim-polyglot'

" Useful snippets for developing in React (Javascript and Typescript)
Plug 'mlaursen/vim-react-snippets'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" GraphQL for Vim
Plug 'jparise/vim-graphql'

" Plugin to move lines and selections up and down
Plug 'matze/vim-move'

" Plugin for Vim Org mode
Plug 'jceb/vim-orgmode'

" Plugin for calender
Plug 'mattn/calendar-vim'

" Elm Program
Plug 'elmcast/elm-vim'

" Docker toolkit
Plug 'kkvh/vim-docker-tools'

" Vim plugin for the Go language
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


" Initialize plugin system
call plug#end()
