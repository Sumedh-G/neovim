--[[
  Neovide Setup
]]--

local neovide_globals = {
  -- globals
  neovide_scale_factor = 1.0,
  neovide_scroll_animation_far_lines = 5,
  neovide_hide_mouse_while_typing = true,
  neovide_cursor_animate_command_line = false,
  neovide_cursor_vfx_mode = "pixiedust",
  neovide_cursor_vfx_particle_lifetime = 2,
}

local neovide_opts = {
  -- opts
  guifont = "JetBrainsMono Nerd Font Mono:h12",
  titlestring = "Neovide",
}

if vim.g.neovide then
  for k, v in pairs(neovide_globals) do
    vim.g[k] = v
  end

  for k, v in pairs(neovide_opts) do
    vim.o[k] = v
  end
  vim.print(vim.g.neovide_version)
end
