vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Better window navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

-- Open NERDTree with keyshortcut
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTree<cr>', { noremap = true })

-- TABS
vim.api.nvim_set_keymap('n', '<Tab>', ':tabnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':tabprevious<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-t>', ':tabnew<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-e>', ':tabclose<CR>', { noremap = true })

-- No more Arrow keys
vim.api.nvim_set_keymap('n', '<Up>', '<NOP>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Down>', '<NOP>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Left>', '<NOP>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Right>', '<NOP>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-k>', '<NOP>', { noremap = true })

-- Opens a new terminal in vertical split
vim.api.nvim_set_keymap('n', '<Leader>t', ':vsplit term://zsh<CR>', { noremap = true })

-- Comment lines
vim.api.nvim_set_keymap('n', '<Leader>cc', '<YOUR_COMMENT_COMMAND>', { noremap = true })

-- Focus NERDTree and switch to the previous window
--vim.api.nvim_set_keymap('n', '<Leader>rr', ':NERDTreeFocus<cr>R<c-w><c-p>', { noremap = true })

-- UndoTree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- Resize commands
vim.api.nvim_set_keymap('n', '<M-j>', ':resize -2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-k>', ':resize +2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-h>', ':vertical resize -2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-l>', ':vertical resize +2<CR>', { noremap = true })

-- Save and exit mappings
vim.api.nvim_set_keymap('i', '<C-s>', '<esc>:w<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-s>', ':w<cr>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-d>', '<esc>:wq!<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-d>', ':wq!<cr>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-q>', '<esc>:exit<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-q>', ':exit<cr>', { noremap = true })

-- Insert mode mapping for ;;
vim.api.nvim_set_keymap('i', ';;', '<Esc>', { noremap = true })


-- Keys for completion
vim.api.nvim_set_keymap('i', '<C-Space>', 'compe#complete()', { silent = true, expr = true, noremap = true })
vim.api.nvim_set_keymap('i', '<C-e>', 'compe#close("<C-e>")', { silent = true, expr = true, noremap = true })

-- Changes all occurrences for the text that you have typed
vim.api.nvim_set_keymap('n', '<Leader>r', ':%s///g<Left><Left>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>rc', ':%s///gc<Left><Left><Left>', { noremap = true })

vim.api.nvim_set_keymap('x', '<Leader>r', ':s///g<Left><Left>', { noremap = true })
vim.api.nvim_set_keymap('x', '<Leader>rc', ':s///gc<Left><Left><Left>', { noremap = true })




