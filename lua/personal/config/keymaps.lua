--[[ My Keymaps ]]--

-- Ease of use keymaps in nvim
local wk = require('which-key')
wk.add({
  { mode = { "n" } },
  -- Telescope
  { "<leader>f", group = "Telescope" },
  { "<leader>ff", desc = "Find Files" },
  { "<leader>fg", desc = "File Grep" },
  { "<leader>fb", desc = "Find Buffer" },
  { "<leader>fh", desc = "Find Help" },
  -- Treesitter
  { "<leader>i", group = "Treesitter" },
  { "<leader>is", desc = "Init Selection" },
  { "<leader>in", desc = "Increment Node" },
  { "<leader>ic", desc = "Increment Scope" },
  { "<leader>im", desc = "Decrement Node" },
  -- Oil Explorer
  { "<leader>o", group = "Explorer" },
  { "<leader>oo", desc = "New Tab" },
  { "<leader>oi", desc = "Floating Window" },
  -- Terminal
  { "<leader>t", group = "Terminal" },
  { "<leader>th", desc = "Horizontal" },
  { "<leader>tv", desc = "Vertical" },
  { "<leader>tf", desc = "Float" },
  { "<leader>t<Tab>", desc = "Tab" },
  { "<leader>tg", desc = "Lazygit" },
  -- Plugin Menus
  { "<leader>p", group = "Plugin Menus" },
  { "<leader>pl", desc = "Lazy" },
  { "<leader>pm", desc = "Mason" },
  -- Compiler Explorer
  { "<leader>C", group = "Godbolt" },
  { "<leader>Cc", group = "Compile Code"},
  { "<leader>Cco", desc = "Compile Once" },
  { "<leader>Ccl", desc = "Compile Live" },
  { "<leader>Cf", desc = "Format Code" },
  { "<leader>Cd", desc = "Delete Cache" },
  { "<leader>Ct", desc = "Assembly Tooltip" },
  { "<leader>Cg", desc = "Assembly Go To Label"},
  { "<leader>Ca", desc = "Add Library" },
  { "<leader>Co", group = "Open"},
  { "<leader>Coe", desc = "Open Example" },
  { "<leader>Cow", desc = "Open Website" },
  -- Buffer Actions
  { "<leader>b", group = "Buffer Actions"},
  { "<leader>bw", desc = "Close Buffer"}
})

--[[ Non-linear keymaps ]]--
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

--[[ Custom keymaps for plugins ]]--

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
  "<leader>pl",
  "<cmd>Lazy<CR>",
  { noremap = true, silent = true }
)
-- Mason
vim.api.nvim_set_keymap(
  "n",
  "<leader>pm",
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
  "<leader>tg",
  "<cmd>lua _Lazygit_toggle()<CR>",
  { noremap = true, silent = true }
)

-- Attached terminal windows
local fterm = Terminal:new({ cmd = "pwsh", display_name = "Powershell", direction = "float" })

function _Fterm_toggle()
  fterm:toggle()
end

vim.api.nvim_set_keymap(
  "n",
  "<leader>tf",
  "<cmd>lua _Fterm_toggle()<CR>",
  { noremap = true, silent = true }
)

local vterm = Terminal:new({ cmd = "pwsh", display_name = "Powershell", direction = "vertical" })

function _Vterm_toggle()
  vterm:toggle()
end

vim.api.nvim_set_keymap(
  "n",
  "<leader>tv",
  "<cmd>lua _Vterm_toggle()<CR>",
  { noremap = true, silent = true }
)

local hterm = Terminal:new({ cmd = "pwsh", display_name = "Powershell", direction = "horizontal" })

function _Hterm_toggle()
  hterm:toggle()
end

vim.api.nvim_set_keymap(
  "n",
  "<leader>th",
  "<cmd>lua _Hterm_toggle()<CR>",
  { noremap = true, silent = true }
)

local tabterm = Terminal:new({ cmd = "pwsh", display_name = "Powershell", direction = "tab" })

function _Tabterm_toggle()
  tabterm:toggle()
end

vim.api.nvim_set_keymap(
  "n",
  "<leader>t<Tab>",
  "<cmd>lua _Tabterm_toggle()<CR>",
  { noremap = true, silent = true }
)

-- Compiler keybindings

vim.api.nvim_set_keymap(
  "n",
  "<leader>Cco",
  "<cmd>CECompile<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>Ccl",
  "<cmd>CECompileLive<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>Cf",
  "<cmd>CEFormat<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>Ca",
  "<cmd>CEAddLibrary<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>Coe",
  "<cmd>CELoadExample<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>Cow",
  "<cmd>CEOpenWebsite<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>Cd",
  "<cmd>CEDeleteCache<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>Ct",
  "<cmd>CEShowTooltip<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>Cg",
  "<cmd>CEGotoLabel<CR>",
  { noremap = true, silent = true }
)


-- Buffer actions

vim.api.nvim_set_keymap(
  "n",
  "<leader>bw",
  "<cmd>bw<CR>",
  { noremap = true}
)
