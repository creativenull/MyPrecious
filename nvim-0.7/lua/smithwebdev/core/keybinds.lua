---[[---------------------------------------]]---
--                 SmithWebDev                 --
--                   Keymaps                   --
---[[---------------------------------------]]---
local u = require'smithwebdev.core.utils'
local noremap = u.noremap
local nnoremap = u.nnoremap
local inoremap = u.inoremap
local tnoremap = u.tnoremap
local vnoremap = u.vnoremap
local default_opts = {noremap = false, silent = true}

-- Map Leader
--------------------------------------------------------------------------------
vim.g.mapleader = " "

-- Alternative Standards
--------------------------------------------------------------------------------
inoremap('jj',           '<Esc>',                   { desc = 'Exit Insert Mode'})
inoremap('JJ',           '<Esc>',                   { desc = 'Exit Insert Mode'})
nnoremap('H',            '^',                       { desc = 'Alternative Begin Line'})
nnoremap('L',            '$',                       { desc = 'Alternative End Line'})
nnoremap('Y',            'y$',                      { desc = 'Alternative Copy to End of Line'})
nnoremap('<',            '<<',                      { desc = 'Alternative Shift Tab (indent)'})
nnoremap('>',            '>>',                      { desc = 'Alternative Tab (indent)'})

-- Disable Highlights
--------------------------------------------------------------------------------
nnoremap("<leader><CR>", "<cmd>noh<CR>",            { desc = 'Disable Highlights'})

-- Resize Window Panes
--------------------------------------------------------------------------------
nnoremap('<up>',         ':resize +2<CR>',          { desc = 'Resize Window Up'})
nnoremap('<down>',       ':resize -2<CR>',          { desc = 'Resize Window Down'})
nnoremap('<left>',       ':vertical resize +2<CR>', { desc = 'Resize Window Left'})
nnoremap('<right>',      ':vertical resize -2<CR>', { desc = 'Resize Window Right'})

-- Rotate Window Panes
--------------------------------------------------------------------------------
nnoremap('<leader>H',    '<C-w>H',                  { desc = 'Move Pane Left'})
nnoremap('<leader>J',    '<C-w>J',                  { desc = 'Move Pane Down'})
nnoremap('<leader>K',    '<C-w>K',                  { desc = 'Move Pane Up'})
nnoremap('<leader>L',    '<C-w>L',                  { desc = 'Move Pane Right'})

-- Tabs
--------------------------------------------------------------------------------
nnoremap('<leader>tc',   ':tabc<CR>',               { desc = 'Close Tab'})
nnoremap('<leader>te',   ':tabedit %<CR>',          { desc = 'Edit File in Tab'})
nnoremap('<leader>th',   ':tabfirst<CR>',           { desc = 'Goto Tab First'})
nnoremap('<leader>tj',   ':tabN<CR>',               { desc = 'Goto Tab Last'})
nnoremap('<leader>tk',   ':tabp<CR>',               { desc = 'Goto Tab Last'})
nnoremap('<leader>tl',   ':tablast<CR>',            { desc = 'Goto Tab Last'})
nnoremap('<leader>tn',   ':tabnew<Space>',          { desc = 'Goto Tab New'})
nnoremap('<leader>to',   '<C-w>T',                  { desc = 'Open File In New Tab'})
nnoremap('<leader>tt',   ':tabs',                   { desc = 'Show Tab List'})

-- Window Navigation
--------------------------------------------------------------------------------
nnoremap('<C-h>',        '<C-w>h',                  { desc = 'Navigate Left'})
nnoremap('<C-j>',        '<C-w>j',                  { desc = 'Navigate Down'})
nnoremap('<C-k>',        '<C-w>k',                  { desc = 'Navigate Up'})
nnoremap('<C-l>',        '<C-w>l',                  { desc = 'Navigate Right'})

-- Window Resize
--------------------------------------------------------------------------------
nnoremap('M',            '<C-w>|<C-w>_',            { desc = 'Window Resize Max'})
nnoremap('<leader>=',    '<C-w>=',                  { desc = 'Window Resize Equally'})
nnoremap('<leader>|',    '<C-w>|',                  { desc = 'Window Resize Max Vertically'})
nnoremap('<leader>_',    '<C-w>_',                  { desc = 'Window Resize Max Horizontally'})
nnoremap('<leader>\\',   '<C-w>v',                  { desc = 'Window Split Vertically'})
nnoremap('<leader>-',    '<C-w>s',                  { desc = 'Window Split Horizonatally'})
nnoremap('<leader>q',    '<C-w>q',                  { desc = 'Window Close'})
nnoremap('<leader>Q',    '<cmd>qa!<CR>',            { desc = 'Window Close'})

-- Better movement between windows
--------------------------------------------------------------------------------
nnoremap("<C-h>",        "<C-w><C-h>",              { desc = "Go to the left window" })
nnoremap("<C-l>",        "<C-w><C-l>",              { desc = "Go to the right window" })
nnoremap("<C-j>",        "<C-w><C-j>",              { desc = "Go to the bottom window" })
nnoremap("<C-k>",        "<C-w><C-k>",              { desc = "Go to the top window" })

--vim.api.nvim_set_keymap('i', '<c-l>', '<cmd>lua EscapePair()<CR>', default_opts)
