# Keymaps custom

## Search workflow (fzf-lua + quickfix + Trouble)

| Keymap | Context | Ce face |
|---|---|---|
| `<leader>sg` | normal | Live grep (LazyVim default) |
| `Tab` | fzf-lua | Selecteaza/deselecteaza results individual |
| `Ctrl-t` | fzf-lua | Trimite results **direct in Trouble** (cel mai rapid) |
| `Ctrl-q` | fzf-lua | Trimite **toate** results la quickfix |
| `Ctrl-a` | fzf-lua | Trimite doar cele selectate cu Tab la quickfix |
| `Ctrl-s` | fzf-lua | Deschide result in split horizontal |
| `Ctrl-v` | fzf-lua | Deschide result in split vertical |
| `<leader>xQ` | normal | Deschide quickfix in Trouble (persistent) |
| `]q` / `[q` | normal | Next/prev quickfix result (centrat) |

**Flow rapid:** `<leader>sg` → cauti → `Ctrl-t` → results direct in Trouble → navighezi.

**Flow alternativ (quickfix):** `<leader>sg` → cauti → `Ctrl-q` → results in quickfix → `<leader>xQ` le vezi in Trouble → `]q`/`[q` navighezi prin ele.

## Search & Replace (Spectre)

| Keymap | Context | Ce face |
|---|---|---|
| `<leader>S` | normal | Toggle Spectre panel |
| `<leader>sw` | normal | Search cuvantul curent |
| `<leader>sw` | visual | Search selectia curenta |
| `<leader>sp` | normal | Search in fisierul curent |

## Alte keymaps custom

| Keymap | Ce face |
|---|---|
| `H` / `M` / `L` | Restored to default (top/middle/bottom of screen) |
| `<leader>d` | Toggle diagnostics |
| `Ctrl-c` | Exit terminal mode |

## Note

- Treesitter e pinat in `lua/plugins/treesitter-cs.lua` — scoate pin-ul cand faci upgrade la Neovim 0.12+
