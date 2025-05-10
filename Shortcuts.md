# Neovim Shortcuts Guide

## Leader Key
- Leader key is set to `<Space>`
- Press `<Space>` by itself to see all available leader key bindings

## Buffer Management
- `<S-l>` - Next buffer
- `<S-h>` - Previous buffer
- `<leader>q` - Close current buffer
- `<leader>Q` - Force close current buffer
- `<leader>U` - Close all buffers
- `<leader>vs` - Vertical split and open next buffer
- `<AS-h>` - Move buffer left
- `<AS-l>` - Move buffer right
- `<A-1>` to `<A-9>` - Go to buffer 1-9
- `<A-0>` - Go to last buffer
- `<A-p>` - Pin/unpin buffer

## Window Management
- `<C-a>` - Select all text
- `<C-h>` - Move to left window
- `<C-j>` - Move to bottom window
- `<C-k>` - Move to top window
- `<C-l>` - Move to right window
- `<F5>` - Increase window height
- `<F6>` - Decrease window height
- `<F7>` - Increase window width
- `<F8>` - Decrease window width

## File Navigation
- `<leader>e` - Toggle file explorer (NvimTree)
- `<leader>te` - Toggle focus between NvimTree and current buffer
- `<leader>f` - Fuzzy find files in current directory
- `<leader>Fh` - Fuzzy find files in home directory
- `<leader>Fc` - Fuzzy find files in ~/.config
- `<leader>Fl` - Fuzzy find files in ~/.local/src
- `<leader>Ff` - Fuzzy find files in parent directory
- `<leader>Fr` - Resume last fuzzy find search

## Search and Replace
- `<leader>g` - Grep search
- `<leader>G` - Grep word under cursor
- `<leader>s` - Replace all (opens command with cursor positioned for input)

## File Operations
- `<leader>w` - Save file
- `<leader>d` - Duplicate file (opens save dialog)
- `<leader>x` - Make file executable
- `<leader>mv` - Move file to new directory
- `<leader>R` - Reload Neovim config

## Terminal
- `<leader>z` - Open floating terminal
- `<Esc>` (in terminal) - Close terminal
- `<leader>H` - Toggle htop in terminal

## LSP (Language Server Protocol)
- `gd` - Go to definition
- `K` - Hover documentation
- `gr` - Show references
- `<leader>rn` - Rename symbol
- `<leader>ca` - Show code actions
- `<leader>fd` - Show diagnostics for current line

## Comments
- `gcc` - Toggle line comment
- `gb` - Toggle block comment
- `gcO` - Add comment above
- `gco` - Add comment below
- `gcA` - Add comment at end of line

## Tree-sitter
- `gnn` - Initialize selection
- `grn` - Incrementally select node
- `grc` - Incrementally select scope
- `grm` - Decrementally select node

## Miscellaneous
- `<leader>u` - Open URL under cursor
- `<leader>i` - Auto indent selected text
- `<leader>W` - Toggle line wrap
- `<leader>nn` - Toggle relative line numbers
- `<leader>P` - Install plugins
- `<leader>ma` - Quick make in directory of current buffer
- `<leader>T` - Show git status

## Alpha Dashboard (Startup Screen)
- `e` - New file
- `f` - Find file
- `t` - Browse current directory
- `r` - Browse ~/.local/src
- `s` - Browse ~/scripts
- `c` - Open config
- `m` - Open mappings
- `p` - Install plugins
- `q` - Quit

## FZF (Fuzzy Finder) Keymaps
- `<M-Esc>` - Hide fzf-lua
- `<F1>` - Toggle help
- `<F2>` - Toggle fullscreen
- `<F3>` - Toggle preview wrap
- `<F4>` - Toggle preview
- `<F5>` - Toggle preview counter-clockwise
- `<F6>` - Toggle preview clockwise
- `<F7>` - Toggle preview treesitter context
- `<F8>` - Decrease preview treesitter context
- `<F9>` - Increase preview treesitter context
- `<S-Left>` - Reset preview
- `<S-down>` - Preview page down
- `<S-up>` - Preview page up
- `<M-S-down>` - Preview down
- `<M-S-up>` - Preview up

## FZF Additional Keymaps
- `ctrl-z` - Abort
- `ctrl-u` - Unix line discard
- `ctrl-f` - Half page down
- `ctrl-b` - Half page up
- `ctrl-a` - Beginning of line
- `ctrl-e` - End of line
- `alt-a` - Toggle all
- `alt-g` - First item
- `alt-G` - Last item

## Autocompletion
- `<C-b>` - Scroll docs up
- `<C-f>` - Scroll docs down
- `<C-Space>` - Trigger completion
- `<CR>` - Confirm selection 