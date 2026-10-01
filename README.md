# hm.nvim

A Vim/Neovim colorscheme derived from [gruber.vim](https://github.com/m6vrm/gruber.vim)
by Roman Madyanov, itself ported from John Gruber's BBEdit "Gruber Dark" scheme.

Changes from upstream gruber.vim:

- the yellow accent (`#ffd700`) is replaced with menthol green (`#30ba8f`)
- literals (`String`, `Constant`) use `#71bc78`

## Install

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
require("lazy").setup({
  'rolton1999/hm.nvim',
})
vim.cmd("colorscheme hm")
```

Or copy `colors/hm.vim` to `~/.config/nvim/colors/`.

## Usage

```vim
:colorscheme hm
```

## License

MIT, see [LICENSE](LICENSE). Original gruber.vim is MIT, copyright Roman Madyanov.
Gruber Dark colors originate from John Gruber's BBEdit scheme
(https://daringfireball.net/projects/bbcolors/schemes/).
