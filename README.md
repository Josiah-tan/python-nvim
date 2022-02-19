# Python-nvim

  - minimalist plugin for running python code within the terminal

# Plugin Dependencies and Installation

  - Telescope and its dependencies
      - Note that telescope is neovim 0.5 + only
          - so build your neovim from source, or get the latest
            release\!
  - Here is an example using
    [vim-plug](https://github.com/junegunn/vim-plug) here
      - but feel free to use whatever plugin manager that you like\!

<!-- end list -->

``` vim
" for terminal integration
Plug 'ThePrimeagen/harpoon'

"Plugin for python integration
Plug 'Josiah-tan/python-nvim'
```

# Setup

  - This setup function is important for initializing the plugin, any
    default options can be set here

<!-- end list -->

``` lua
-- no defaults by default
require("makefile_nvim").setup()
-- use a custom virtual environment
require("python_nvim").setup({
    source = "/path/to/env/here/activate"
})
```

# Builtins

  - This plugin has several builtin features that you can utilize

<!-- end list -->

``` vim
" executes current file in a virtual environment if available, otherwise install into the global environment
nnoremap <leader>sv <cmd>lua require("python_nvim.builtin").sourceVenv(1)<CR>
" pip installs packages into your virtual environment if available, otherwise install into the global environment
nnoremap <leader>si <cmd>lua require("python_nvim.builtin").sourceInstallModules(1)<CR>

" initializes terminal with Python environment (otherwise it will be lazily initialized)
nnoremap <leader>jq <cmd>lua require("python_nvim.builtin").PythonInit(4)<cr>
" sends visually selected text to the Python terminal
vnoremap <leader>x <cmd>lua require("python_nvim.builtin").runPythonSelection(4)<cr><esc>
" sends sends text between two line separators "##" above and below the region of text to be executed in the Python terminal
nnoremap <leader>x <cmd>lua require("python_nvim.builtin").runPythonBlock(4)<cr>
" executes the current line without indentation in the python terminal
nnoremap <leader>xl <cmd>lua require("python_nvim.builtin").runPythonLineNoIndent(4)<cr>
```
