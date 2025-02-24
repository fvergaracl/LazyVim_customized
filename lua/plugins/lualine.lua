local function git_status()
  local ahead = vim.fn.systemlist("git rev-list --count @{upstream}..HEAD 2>/dev/null")[1] or ""
  local behind = vim.fn.systemlist("git rev-list --count HEAD..@{upstream} 2>/dev/null")[1] or ""

  local result = ""
  if tonumber(ahead) and tonumber(ahead) > 0 then
    result = "↑" .. ahead
  end
  if tonumber(behind) and tonumber(behind) > 0 then
    result = result .. " ↓" .. behind
  end
  return result
end

return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.sections = opts.sections or {}
    opts.sections.lualine_b = {
      "branch",
      "diff",
      git_status,
    }
  end,
}
