local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Header configuration
dashboard.section.header.val = {
    [[  ^  ^  ^   ^☆ ★ ☆ ___I_☆ ★ ☆ ^  ^   ^  ^  ^   ^  ^ ]],
    [[ /|\/|\/|\ /|\ ★☆ /\-_--\ ☆ ★/|\/|\ /|\/|\/|\ /|\/|\ ]],
    [[ /|\/|\/|\ /|\ ★ /  \_-__\☆ ★/|\/|\ /|\/|\/|\ /|\/|\ ]],
    [[ /|\/|\/|\ /|\ 󰻀 |[]| [] | 󰻀 /|\/|\ /|\/|\/|\ /|\/|\ ]],
}

-- Button configuration
dashboard.section.buttons.val = {
    dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("f", "󰍉  Find file", ":lua require('fzf-lua').files() <CR>"),
    dashboard.button("t", "  Browse cwd", ":NvimTreeOpen<CR>"),
    dashboard.button("r", "  Browse src", ":e ~/.local/src/<CR>"),
    dashboard.button("s", "󰯂  Browse scripts", ":e ~/scripts/<CR>"),
    dashboard.button("c", "  Config", ":e ~/.config/nvim/<CR>"),
    dashboard.button("m", "  Mappings", ":e ~/.config/nvim/lua/config/mappings.lua<CR>"),
    dashboard.button("p", "  Plugins", ":PlugInstall<CR>"),
    dashboard.button("q", "󰅙  Quit", ":q!<CR>"),
}

-- Footer configuration
dashboard.section.footer.val = [[   ]]

-- Styling configuration
dashboard.section.buttons.opts.hl = "Keyword"

-- Final setup (THIS WAS THE MAIN FIX NEEDED)
alpha.setup(dashboard.config)

-- Disable folding in alpha buffer
vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
