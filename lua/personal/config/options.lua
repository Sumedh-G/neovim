--[[
Personal Options for nvim
]]--

local personal_options = {
  -- GUI
  background = "dark", -- "dark" or "light", used for highlight colors
  cmdheight = 1, -- number of lines to use for the command-line
  cursorline = true, -- highlight the screen line of the cursor
  cursorlineopt = { "line", "number" }, -- settings for 'cursorline'
  showmode = false, -- message on status line to show current mode
  laststatus = 2,  -- The value of this option influences when the last window will have a status line
  statusline = " ", -- appearance of status line
  colorcolumn = "120", -- line at 120 chrs
  updatetime = 200, -- lowers latency for updates

  -- Ruler
  ruler = false, -- show cursor line and column in the status line

  -- Text Wrap
  wrap = false, -- long lines wrap and continue on the next line

  -- Indentation
  autoindent = true, -- take indent for new line from previous line
  copyindent = true, -- make 'autoindent' use existing indent structure
  expandtab = true, -- use spaces when <Tab> is inserted
  preserveindent = false, -- preserve the indent structure when reindenting
  shiftround = false, -- round indent to multiple of shiftwidth
  shiftwidth = 2, -- number of spaces to use for (auto)indent step
  smarttab = true, -- use 'shiftwidth' when inserting <Tab>
  softtabstop = 2, -- number of spaces that <Tab> uses while editing

  -- Spell Check
  spell = false, -- enable spell checking
  spelllang = "en_us", -- language(s) to do spell checking for

  -- Bracketing
  showmatch = false, -- briefly jump to matching bracket if insert one

  -- Line Numbers
  number = true, -- print the line number in front of each line
  numberwidth = 2, -- number of columns used for the line number
  relativenumber = true, -- show relative line number in front of each line

  -- Scrolling
  scroll = 16, -- lines to scroll with CTRL-U and CTRL-D
  scrolloff = 8, -- minimum nr. of lines above and below cursor
  sidescroll = 4, -- minimum number of columns to scroll horizontal

  -- Search
  hlsearch = false, -- highlight matches with last search pattern
  ignorecase = true, -- ignore case in search patterns
  incsearch = true, -- highlight match while typing search pattern
  smartcase = true, -- no ignore case when pattern has uppercase

  -- Editor Behaviour
  autowrite = false, -- automatically write file if changed
  backup = false, -- keep backup file after overwriting a file
  history = 1000, -- number of command-lines that are remembered
  swapfile = false, -- whether to use a swapfile for a buffer

  -- Mouse Usage
  mouse = "a", -- enable the use of mouse clicks
  mousehide = true, -- hide mouse pointer while typing

  -- Icons and Titles
  icon = true, -- let Vim set the text of the window icon
  iconstring = "Nvim", -- string to use for the Vim icon text
  title = true, -- let Vim set the title of the window

}



for k, v in pairs(personal_options) do
  vim.opt[k] = v
end
