# hm.nvim

A Vim/Neovim colorscheme derived from [gruber.vim](https://github.com/m6vrm/gruber.vim)
by Roman Madyanov, itself ported from John Gruber's BBEdit "Gruber Dark" scheme.

Changes from upstream gruber.vim:

- the yellow accent (`#ffd700`) is replaced with menthol green (`#30ba8f`)
- literals (`String`, `Constant`) use `#71bc78`

## Install

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "rolton1999/hm.nvim",
  lazy = false,
  priority = 1000,
  init = function()
    vim.cmd("colorscheme hm")
  end,
}
```

A plain string is enough. lazy.nvim defaults `lazy = false` for plugins with no
lazy-loading trigger, so `colors/hm.vim` is on the runtimepath by the time you set
the colorscheme:

```lua
require("lazy").setup({
  'rolton1999/hm.nvim',
})
vim.cmd("colorscheme hm")
```

`priority` is only needed when another plugin loads a colorscheme of its own and
would otherwise override yours.

Or copy `colors/hm.vim` to `~/.config/nvim/colors/`.

## Usage

```vim
:colorscheme hm
```

## License

MIT, see [LICENSE](LICENSE). Original gruber.vim is MIT, copyright Roman Madyanov.
Gruber Dark colors originate from John Gruber's BBEdit scheme
(https://daringfireball.net/projects/bbcolors/schemes/).