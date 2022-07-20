--重命名lua下面的几个命令名称方便后面使用
local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt=vim.opt

local function map(mode,lhs,rhs,opts)
	local options = {noremap=true}
	if opts then options=vim.tbl_extend('force',options,opts) end
	vim.api.nvim_set_keymap(mode,lhs,rhs,options)
end
--配置选项
cmd 'colorscheme desert'
opt.completeopt={'menuone','noinsert','noselect'}
opt.expandtab=true
opt.hidden=true
opt.ignorecase=true
opt.joinspaces=false
opt.list=true
opt.number=true
opt.relativenumber=false
opt.scrolloff=4
opt.shiftwidth=2
opt.sidescrolloff=8
opt.smartcase=true
opt.smartindent=true
opt.splitbelow=true
opt.splitright=true
opt.tabstop=2
opt.termguicolors=true
opt.wildmode={'list','longest'}
opt.wrap=false

--键盘映射
map('', '<leader>c','"+y')
map('i', '<C-u>', '<C-g>u<C-u>')
map('i', '<C-w>', '<C-g>u<C-w>')

map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
map('i','<Tab>','pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

map('n', '<C-l>','<cmd>noh<CR>')--清除高亮
map('n', '<leader>o', 'm`o<Esc>``')--普通模式下插入新的一行

map('n', '<space>,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
map('n', '<space>;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
map('n', '<space>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
map('n', '<space>d', '<cmd>lua vim.lsp.buf.definition()<CR>')
map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
map('n', '<space>h', '<cmd>lua vim.lsp.buf.hover()<CR>')
map('n', '<space>m', '<cmd>lua vim.lsp.buf.rename()<CR>')
map('n', '<space>r', '<cmd>lua vim.lsp.buf.references()<CR>')
map('n', '<space>s', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')

