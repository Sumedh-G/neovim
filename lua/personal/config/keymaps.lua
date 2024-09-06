
--[[ My Keymaps ]]--

-- Ease of use keymaps in nvim

-- Saving
vim.api.nvim_set_keymap(
  "n",
  "<c-s>",
  "<cmd>w<CR>",
  { noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<c-S>",
  "<cmd>wa<CR>",
  { noremap = true }
)

-- Saving in insert
vim.api.nvim_set_keymap(
  "i",
  "<c-s>",
  "<esc><cmd>w<CR>",
  { noremap = true }
)
vim.api.nvim_set_keymap(
  "i",
  "<c-S>",
  "<esc><cmd>wa<CR>",
  { noremap = true }
)



-- Buffer control
vim.api.nvim_set_keymap(
  "n",
  "<Tab>",
  "<cmd>bn<CR>",
  { noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<S-Tab>",
  "<cmd>bp<CR>",
  { noremap = true }
)

-- Oil
-- Open as float
vim.api.nvim_set_keymap(
  "n",
  "<leader>oi",
  "<cmd>lua require('oil').open_float()<CR>",
  { noremap = true, silent = true }
)
-- Open as Buffer
vim.api.nvim_set_keymap(
  "n",
  "<leader>oo",
  "<cmd>lua require('oil').open('.')<CR>",
  { noremap = true, silent = true }
)

-- Opening Packages
-- Lazy
vim.api.nvim_set_keymap(
  "n",
  "<leader>lz",
  "<cmd>Lazy<CR>",
  { noremap = true, silent = true }
)
-- Mason
vim.api.nvim_set_keymap(
  "n",
  "<leader>msn",
  "<cmd>Mason<CR>",
  { noremap = true, silent = true }
)


-- Terminal madness
local Terminal  = require('toggleterm.terminal').Terminal

-- Lazygit
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

function _Lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap(
  "n",
  "<leader>gg",
  "<cmd>lua _Lazygit_toggle()<CR>",
  { noremap = true, silent = true }
)

-- Htop
local htop = Terminal:new({ cmd = "htop", hidden = true, direction = "float" })

function _Htop_toggle()
  htop:toggle()
end

vim.api.nvim_set_keymap(
  "n",
  "<leader>ht",
  "<cmd>lua _Htop_toggle()<CR>",
  { noremap = true, silent = true }
)

-- Attached terminal windows
local fterm = Terminal:new({ display_name = "Terminal", direction = "float" })

function _Fterm_toggle()
  fterm:toggle()
end

vim.api.nvim_set_keymap(
  "n",
  "f<c-t>",
  "<cmd>lua _Fterm_toggle()<CR>",
  { noremap = true, silent = true }
)


local vterm = Terminal:new({ display_name = "Terminal", direction = "vertical" })

function _Vterm_toggle()
  vterm:toggle()
end

vim.api.nvim_set_keymap(
  "n",
  "v<c-t>",
  "<cmd>lua _Vterm_toggle()<CR>",
  { noremap = true, silent = true }
)

