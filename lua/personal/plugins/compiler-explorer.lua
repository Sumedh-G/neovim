
local compiler_opts = {

}

return {
  'krady21/compiler-explorer.nvim',
  cmd = {
    "CECompile",
    "CECompileLive",
    "CECompileFormat",
    "CEAddLibrary",
    "CELoadExample",
    "CEOpenWebsite",
    "CEDeleteCache",
    "CEShowTooltip",
    "CEGoToLabel",
  },
  opts = compiler_opts,
}
