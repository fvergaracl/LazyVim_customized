```markdown
# Caps Lock Indicator for Neovim

🟡 **Caps Lock Indicator** is a lightweight Neovim plugin that displays a visual warning in your `lualine` statusline when Caps Lock is active.

It is designed to be **optimal, non-intrusive, and cross-platform**, working seamlessly with **LazyVim** and **lualine.nvim** without overriding your themes or color schemes.

---

## 🔍 Features

- ✅ Periodically checks the system's Caps Lock status (every 1 second)
- ✅ Displays an `🟡 CAPS LOCK` indicator in your lualine
- ✅ Compatible with Linux (X11), macOS, and Windows (basic support)
- ✅ Easy to integrate with LazyVim
- ✅ No performance impact or theme overrides

---

## 💾 Installation

1. Create the file:

```
~/.config/nvim/lua/custom/capslock_indicator.lua


2. Edit your **Lualine config**, usually at:

-- ~/.config/nvim/lua/plugins/lualine.lua
local caps = require("custom.capslock_indicator")

return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    table.insert(opts.sections.lualine_x, caps.get_status)
  end,
}

3. Start the background checker by adding this line to:

i~/.config/nvim/lua/config/autocmds.lua
```

```lua
require("custom.capslock_indicator").start_check()
```

---

## 💡 Example Result

When Caps Lock is ON, your lualine will show:

```
NORMAL | 📁 file.lua | 🟡 CAPS LOCK
```

When Caps Lock is OFF, the indicator disappears automatically.

---

## 🖥️ OS Compatibility

| OS        | Supported | Notes                                    |
|-----------|-----------|------------------------------------------|
| Linux     | ✅ Yes     | Uses `xset q` (requires X11, not Wayland)|
| macOS     | ✅ Yes     | Uses `hidutil eventstatus`              |
| Windows   | ⚠ Partial | Placeholder (can be improved via PowerShell) |

For more precise Windows support, external scripts can be added.

---

## 📌 Future Improvements

- Add persistent floating UI notifications (optional)
- External real-time listener with `evdev` (Linux) or `hidutil` (macOS)
- Better support for Windows with native PowerShell listener

---

## 📄 License

MIT © 2025

---
