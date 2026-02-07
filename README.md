# Neovim Config

A modern, fast, and minimal Neovim setup focused on C/C++ development, autocomplete, and a clean UI. Built with `lazy.nvim` and configured in Lua.

## Features

- **LSP (Neovim 0.11 API)** with `clangd`, Lua, and CMake support
- **Autocomplete** via `nvim-cmp` + snippets + signature help
- **Supermaven** AI suggestions
- **Tree-sitter** syntax highlighting + textobjects
- **Fuzzy finding** with Telescope
- **File explorer** with NvimTree
- **Dashboard** with Alpha
- **Debugging** with nvim-dap + UI
- **Git integration** with Gitsigns
- **Theme** based on `oxocarbon` (Nyoom-inspired)

## Requirements

- Neovim **0.11+**
- `git`, `ripgrep`, and a Nerd Font for icons

### LSP / Tooling

This config uses the native `vim.lsp.config` API. If you are on **NixOS**, prefer installing LSP servers via Nix instead of Mason.

Suggested tools:

- `clangd`
- `lua-language-server`
- `cmake-language-server`
- `clang-format` (optional)

## Installation

```bash
git clone https://github.com/zoth-0x/nvim-config.git ~/.config/nvim
```

Then open Neovim and run:

```
:Lazy sync
```

## Keymaps (Highlights)

- `<Space>e` — Toggle file explorer
- `<Space>o` — Focus file explorer
- `<C-s>` — Save all (normal/insert/visual)
- `<F5>` — Debug start/continue
- `<F10>/<F11>/<F12>` — Debug step over/into/out

## Structure

```
lua/
  core/          # options, keymaps, autocmds
  plugins/       # lazy.nvim plugin list
  plugins/setup/ # plugin configs
```

## Notes

- The theme is set in `lua/plugins/init.lua`.
- LSP servers are configured in `lua/plugins/setup/lsp.lua`.

## License

MIT
