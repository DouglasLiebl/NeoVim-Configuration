-- Set tabstop, shiftwidth, and expandtab
vim.opt.tabstop = 4       -- Number of spaces tabs count for
vim.opt.shiftwidth = 4    -- Number of spaces to use for auto-indent
vim.opt.expandtab = true  -- Convert tabs to spaces

-- Show existing tab with 4 spaces width
vim.opt.list = true
vim.opt.listchars = { tab = '»··', trail = '·', extends = '❯', precedes = '❮' }

-- Enable soft wrapping
vim.opt.wrap = true

-- Align tabs with indent lines
vim.opt.smarttab = true

-- Highlight the current line
vim.opt.cursorline = true

