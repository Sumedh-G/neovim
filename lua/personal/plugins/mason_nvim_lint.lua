local mason_nvim_lint_opts = {
  -- My personal opts for mason linting
  quiet_mode = true,
  automatic_installation = true,
}

return {
  "rshkarin/mason-nvim-lint",
  dependencies = { "mason.nvim", "nvim-lint" },
  opts = mason_nvim_lint_opts,
}
