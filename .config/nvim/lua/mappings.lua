-- functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- split
map('n', '<Leader>h', ':<C-u>split<CR>')
map('n', '<Leader>v', ':<C-u>vsplit<CR>')

-- tabs
map('n', '<Tab>', 'gt')
map('n', '<S-Tab>', 'gT')
map('n', '<S-t>', ':tabnew<CR>', { silent = true })
map('n', '<S-c>', ':tabclose<CR>', { silent = true })

-- set working directory
map('n', '<Leader>.', ':lcd %:p:h<CR>')

-- copy/cut
map('n', 'YY', '"+y<CR>')
map('n', 'XX', '"+x<CR>')
map('n', '<Leader>p', '"+gP<CR>')

if vim.fn.has('macunix') == 1 then
    map('v', '<C-x>', ':!pbcopy<CR>')
    map('v', '<C-c>', ':w !pbcopy<CR><CR>')
end

-- close buffer
map('n', '<Leader>c', ':bd<CR>')

-- clean search (highlight)
map('n', '<Leader><Space>', ':noh<CR>', { silent = true })

-- vmap for maintain Visual Mode after shifting > and <
map('v', '<', '<gv')
map('v', '>', '>gv')

-- move visual block
map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")

-- open current line on GitHub
map('n', '<Leader>o', ':.Gbrowse<CR>')

-- golang
map('n', '<Leader><Leader>l', ':GoLint<CR>')
map('n', '<Leader><Leader>fs', ':GoFillStruct<CR>')
map('n', '<Leader><Leader>at', ':GoAddTest<CR>')
map('n', '<Leader><Leader>c', ':GoCoverage<CR>')

-- telescope
map('n', '<Leader>ff', ':Telescope find_files<CR>')
map('n', '<Leader>fg', ':Telescope live_grep<CR>')
map('n', '<Leader>fb', ':Telescope buffers<CR>')
map('n', '<Leader>fh', ':Telescope help_tags<CR>')

-- nvim.tree
map('n', '<C-n>', ':NvimTreeToggle<CR>')
map('n', '<Leader><Leader>r', ':NvimTreeRefresh<CR>')
