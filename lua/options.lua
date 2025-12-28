local o = vim.opt

-- wrapping
o.showbreak = "↳ "
o.linebreak = true -- break at newlines, not last char

-- UI
o.cmdheight = 0         -- experimental
o.showcmd = false       -- just more overhead when cmdheight is 0
o.termguicolors = true  -- 24-bit colors
o.laststatus = 3        -- only one statusline to rule them all
o.winborder = "rounded" -- windows default to rouded borders. looks nice

-- Indentation & tab behaviour
o.expandtab = true   -- insert spaces instead of tab characters
o.shiftwidth = 2     -- number of spaces for each indent level
o.tabstop = 2        -- display width of a tab character
o.softtabstop = 2    -- how <Tab> and <BS> behave in insert mode
o.smartindent = true -- auto-indent new lines based on syntax

-- Line numbers & gutters
o.number = true
o.relativenumber = true

-- Search
o.smartcase = true

-- blablabla
o.swapfile = false
o.clipboard = "unnamedplus"

-- Comments
o.formatoptions = o.formatoptions - { "c", "r", "o" }

-- Mouse
o.mouse = ""
