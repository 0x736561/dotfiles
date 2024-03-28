-- Basic Config --
-- Vimscript --
vim.cmd([[
    let g:netrw_liststyle = 3
    let g:netrw_banner = 0
    let g:netrw_winsize = 50
    let g:netrw_browse_split = 5
    map <up> <nop>
    map <down> <nop>
    map <left> <nop>
    map <right> <nop>
    imap <up> <nop>
    imap <down> <nop>
    imap <left> <nop>
    imap <right> <nop>
    set wildignore+=blue.vim,darkblue.vim,default.vim,delek.vim,desert.vim,
      \elflord.vim,evening.vim,industry.vim,koehler.vim,morning.vim,
      \pablo.vim,peachpuff.vim,ron.vim,shine.vim,slate.vim,torte.vim,
      \zellner.vim,habamax.vim,lunaperche.vim,quiet.vim,retrobox.vim,
      \sorbet.vim,wildcharm.vim,zaibatsu.vim,murphy.vim,
]])

-- Lua --
-- booleans --
vim.o.number        =   true
vim.o.cursorline    =   true
vim.o.hlsearch      =   true
vim.o.ignorecase    =   true
vim.o.smartcase     =   true
vim.o.expandtab     =   true
vim.o.autoindent    =   true
vim.o.showmatch     =   true
vim.o.hidden        =   true
vim.o.termguicolors =   true
vim.o.splitright    =   true
vim.o.splitbellow   =   true
vim.o.list          =   true

-- numbers --
vim.o.mat           =   2
vim.o.tabstop       =   4
vim.o.softtabstop   =   4
vim.o.shiftwidth    =   4
vim.o.textwidth     =   79
vim.o.scrolloff     =   8

-- strings --
vim.o.signcolumn    =   "yes"
vim.o.clipboard     =   "unnamed,unnamedplus"
vim.o.colorcolumn   =   "80"
vim.o.listchars     =   "tab:>-,trail:~,extends:>,precedes:<,space:·"

-- Advanced Config --
-- Plugins -- 
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    "nvim-treesitter/nvim-treesitter",
    "prichrd/netrw.nvim",
    "folke/which-key.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "lewis6991/gitsigns.nvim",
    "zaldih/themery.nvim",
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        }
    },

    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons"
    },

    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        dependencies = {
            { "nvim-tree/nvim-web-devicons" }
        }
    },

    -- Temas --
    { 
        "catppuccin/nvim", name = "catppuccin"
    },
    "ellisonleao/gruvbox.nvim",
    "neanias/everforest-nvim",
    "navarasu/onedark.nvim",
    "EdenEast/nightfox.nvim",
    "folke/tokyonight.nvim",
    "rebelot/kanagawa.nvim",
    "xero/miasma.nvim",
})

-- Plugin Config -- 
require("lualine").setup()
require("bufferline").setup()
require("gitsigns").setup()
require("dashboard").setup { shortcut_type = "number" }
require("nvim-treesitter.configs").setup {
    ensure_installed = {
        "c", "lua", "vim", "rust", "bash", "markdown", "xml", "css",
        "html", "javascript", "ini", "toml", "yaml", "hare", "asm",
        "dockerfile", "python", "go"
    },
    highlight = { enable = true },
}
require"netrw".setup {
  icons = {
    symlink = "",
    directory = "",
    file = "",
  },
  use_devicons = true,
}
require("themery").setup({
    themes = {
    {
        name = "Gruvbox Dark",
        colorscheme = "gruvbox",
        before = [[ vim.opt.background = "dark" ]],
    },

    {
        name = "Gruvbox Light",
        colorscheme = "gruvbox",
        before = [[ vim.opt.background = "light" ]],
    },

    {
        name = "Miasma",
        colorscheme = "miasma",
        before = [[ vim.opt.background = "dark" ]],
    },

    {
        name = "Everforest Dark",
        colorscheme = "everforest",
        before = [[ vim.opt.background = "dark" ]],
    },

    {
        name = "Everforest Light",
        colorscheme = "everforest",
        before = [[ vim.opt.background = "light" ]],
    },

    {
        name = "Onedark",
        colorscheme = "onedark",
        before = [[ vim.opt.background = "dark" ]],
    },

    {
        name = "Tokyonight",
        colorscheme = "tokyonight",
        before = [[ vim.opt.background = "dark" ]],
    },

    {
        name = "Kanagawa Wave",
        colorscheme = "kanagawa-wave",
        before = [[ vim.opt.background = "dark" ]],
    },

    {
        name = "Kanagawa Dragon",
        colorscheme = "kanagawa-dragon",
        before = [[ vim.opt.background = "dark" ]],
    },

    {
        name = "Kanagawa Lotus",
        colorscheme = "kanagawa-lotus",
        before = [[ vim.opt.background = "light" ]],
    },

    {
        name = "Catppuccin Mocha",
        colorscheme = "catppuccin-mocha",
        before = [[ vim.opt.background = "dark" ]],
    },

    {
        name = "Catppuccin Macchiato",
        colorscheme = "catppuccin-macchiato",
        before = [[ vim.opt.background = "dark" ]],
    },

    {
        name = "Catppuccin Frappe",
        colorscheme = "catppuccin-frappe",
        before = [[ vim.opt.background = "dark" ]],
    },

    {
        name = "Catppuccin Latte",
        colorscheme = "catppuccin-latte",
        before = [[ vim.opt.background = "light" ]],
    },

    {
        name = "Carbonfox",
        colorscheme = "carbonfox",
        before = [[ vim.opt.background = "dark" ]],
    },

    {
        name = "Dawnfox",
        colorscheme = "dawnfox",
        before = [[ vim.opt.background = "light" ]],
    },

    {
        name = "Dayfox",
        colorscheme = "dayfox",
        before = [[ vim.opt.background = "light" ]],
    },

    {
        name = "Duskfox",
        colorscheme = "duskfox",
        before = [[ vim.opt.background = "dark" ]],
    },

    {
        name = "Nightfox",
        colorscheme = "nightfox",
        before = [[ vim.opt.background = "dark" ]],
    },

    {
        name = "Nordfox",
        colorscheme = "nordfox",
        before = [[ vim.opt.background = "dark" ]],
    },

    {
        name = "Terafox",
        colorscheme = "terafox",
        before = [[ vim.opt.background = "dark" ]],
    },

    },

    themeConfigFile = "~/.config/nvim/init.lua",
    livePreview = true,
})
-- Themery block
-- This block will be replaced by Themery.
vim.opt.background = "dark"

vim.cmd("colorscheme gruvbox")
vim.g.theme_id = 1
-- end themery block

-- Keybinds --
vim.g.mapleader = " "
local wk = require("which-key")
wk.register({
    name = "Leader",
    a = {"<cmd>bp<cr>", "Buffer anterior"},
    d = {"<cmd>Dashboard<cr>", "Abrir Dashboard"},
    p = {"<cmd>bn<cr>", "Próximo buffer"},
    c = {"<cmd>bdel<cr>", "Fechar buffer"},
    v = {"<cmd>vs<cr>", "Split vertical"},
    m = {"<cmd>sp<cr>", "Split horizontal"},
    n = {"<cmd>Explore<cr>", "Explorador de arquivos"},
    s = {"<cmd>write<cr>", "Salvar"},
    q = {"<cmd>quit<cr>", "Fechar janela"},
    h = {"<c-w>h", "Janela à esquerda"},
    j = {"<c-w>j", "Janela abaixo"},
    k = {"<c-w>k", "Janela acima"},
    l = {"<c-w>l", "Janela à direita"},
    f = { "<cmd>Telescope find_files<cr>", "Encontrar arquivos" },
    b = {"<cmd>Telescope buffers<cr>", "Lista de buffers"},
    t = {"<cmd>Themery<cr>", "Temas"},
    g = {
        name = "Git",
        p = {"<cmd>Gitsigns preview_hunk<cr>", "Preview Hunk"},
    },
}, { prefix = "<leader>" })
