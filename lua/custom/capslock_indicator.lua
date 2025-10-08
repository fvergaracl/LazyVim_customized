local M = {}

local capslock_status = false

local is_windows = vim.fn.has "win32" == 1
local is_macos = vim.fn.has "mac" == 1
local is_linux = vim.fn.has "unix" == 1 and not is_macos

function M.is_capslock_on()
  if is_linux then
    local out = vim.fn.system "xset q | grep 'Caps Lock'"
    return out:match "Caps Lock:%s+on" ~= nil
  elseif is_macos then
    local out = vim.fn.system "hidutil eventstatus CapsLock"
    return out:match "Caps Lock = 1" ~= nil
  elseif is_windows then
    local out = vim.fn.system [[powershell -command "(Get-Culture).TextInfo.IsRightToLeft"]]
    return out:match "True" ~= nil
  else
    return false
  end
end

function M.get_status()
  if capslock_status then
    return "%#LualineCapsLock#" .. "🔴 CAPS LOCK ACTIVE" .. "%*"
  else
    return ""
  end
end

function M.start_check()
  vim.api.nvim_set_hl(0, "LualineCapsLock", { fg = "#FFFFFF", bg = "#FF0000", bold = true })

  vim.fn.timer_start(1000, function()
    vim.schedule(function()
      local on = M.is_capslock_on()
      if on ~= capslock_status then
        capslock_status = on
        vim.cmd "redrawstats"
      end
    end)
  end, { ["repeat"] = -1 })
end

return M
