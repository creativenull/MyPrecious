print('LSP directory loaded')

local u = require'smithwebdev.core.utils'
local noremap = u.noremap
local nnoremap = u.nnoremap
local inoremap = u.inoremap
local vnoremap = u.vnoremap

nnoremap('<leader>ld', ':lua vim.lsp.buf.definition()<cr>',                                 { desc = "Go To Definition"})
nnoremap('<leader>lD', ':lua vim.lsp.buf.declaration()<cr>',                                { desc = "Go To Declaration"})
nnoremap('<leader>li', ':LspInfo<cr>',                                                      { desc = "Connected Language Servers"})
nnoremap('<leader>lI', '<cmd>lua vim.lsp.buf.implementation()<CR>',                         { desc = "Go To Implementation"})
nnoremap('<leader>lf', '<cmd>lua vim.lsp.buf.formatting()<CR>',                             { desc = "Format Code"})
nnoremap('<leader>lk', ':lua vim.lsp.buf.signature_help()<cr>',                             { desc = "Signature Help"})
nnoremap('<leader>ll', ':lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>', { desc = "List Workspace Folders" })
nnoremap('<leader>lr', ':lua vim.lsp.buf.references()<cr>',                                 { desc = "References"})
nnoremap('<leader>lt', ':lua vim.lsp.buf.type_definition()<cr>',                            { desc = "Type Definition"})
nnoremap('<leader>lw', ':lua vim.lsp.buf.add_workspace_folder()<cr>',                       { desc = "Add Workspace Folder"})
nnoremap('<leader>lW', ':lua vim.lsp.buf.remove_workspace_folder()<cr>',                    { desc = "Remove Workspace Folder"})

nnoremap('<leader>la', ':Lspsaga code_action<cr>',                                          { desc = "Code Action"})
nnoremap('<leader>le', ':Lspsaga show_line_diagnostics<cr>',                                { desc = "Show Line Diagnostics"})
nnoremap('<leader>ln', ':Lspsaga diagnostic_jump_next<cr>',                                 { desc = "Go To Next Diagnostic"})
nnoremap('<leader>lK', ":Lspsaga hover_doc<cr>",                                            { desc = "Hover Commands"})
nnoremap('<leader>lN', ':Lspsaga diagnostic_jump_prev<cr>',                                 { desc = "Go To Previous Diagnostic"})
nnoremap('<leader>lr', ':Lspsaga rename<cr>',                                               { desc = "Rename"})
--map(0, "n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
--map(0, "n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(2, '<c-d>')<cr>", {})

