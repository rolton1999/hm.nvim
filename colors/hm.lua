-- hm.nvim — a gruber.vim derivative with a menthol green accent.
-- Derived from https://github.com/m6vrm/gruber.vim (MIT, Roman Madyanov),
-- itself ported from John Gruber's BBEdit "Gruber Dark" scheme.

vim.cmd("highlight clear")
if vim.g.syntax_on then
  vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "hm"

local c = {
  black = { "#1c1c1c", "234" },
  blue = { "#87afd7", "110" },
  brown = { "#af875f", "137" },
  cyan = { "#afd7af", "151" },
  gray = { "#262626", "235" },
  green = { "#87d75f", "113" },
  red = { "#ff5f5f", "203" },
  white = { "#e4e4e4", "254" },
  literal = { "#71bc78", "72" },
  menthol = { "#97ce97", "114" },
}

local groups = {
  ColorColumn = { bg = c.gray },
  Comment = { fg = c.brown },
  Constant = { fg = c.literal },
  CursorLine = { bg = c.gray },
  DiffAdd = { fg = c.green },
  DiffChange = { fg = c.blue },
  DiffDelete = { fg = c.red },
  DiffText = { fg = c.blue, underline = true },
  Directory = { fg = c.blue },
  EndOfBuffer = { fg = c.black },
  Error = { fg = c.red },
  ErrorMsg = { fg = c.red },
  FoldColumn = { fg = c.brown, bg = c.gray },
  Folded = { fg = c.brown, bg = c.gray, italic = true },
  Function = { fg = c.blue },
  Identifier = { fg = c.white },
  Ignore = { fg = c.black },
  MatchParen = { fg = c.menthol, bold = true },
  MoreMsg = { fg = c.green },
  NonText = { fg = c.blue },
  Normal = { fg = c.white, bg = c.black },
  Pmenu = { fg = c.white, bg = c.gray },
  PmenuSbar = { bg = c.gray },
  PmenuSel = { fg = c.black, bg = c.menthol, bold = true },
  PmenuThumb = { bg = c.black },
  PreProc = { fg = c.cyan },
  Question = { fg = c.blue },
  Special = { fg = c.white },
  SpecialChar = { fg = c.cyan },
  SpecialComment = { fg = c.brown },
  SpecialKey = { fg = c.blue },
  SpellBad = { fg = c.red, underline = true },
  SpellCap = { fg = c.blue, underline = true },
  SpellLocal = { fg = c.menthol, underline = true },
  SpellRare = { underline = true },
  Statement = { fg = c.menthol, bold = true },
  StatusLine = { fg = c.white, bg = c.gray, bold = true },
  StatusLineNC = { fg = c.white, bg = c.gray },
  String = { fg = c.literal },
  Title = { fg = c.white },
  Todo = { fg = c.brown, italic = true },
  Type = { fg = c.menthol, bold = true },
  Underlined = { underline = true },
  VertSplit = { fg = c.gray },
  WarningMsg = { fg = c.menthol },
  WildMenu = { fg = c.black, bg = c.menthol, bold = true },
  diffAdded = { fg = c.green },
  diffRemoved = { fg = c.red },
  diffSubname = { fg = c.blue },
}

for group, attrs in pairs(groups) do
  if attrs.fg then
    attrs.foreground, attrs.ctermfg = attrs.fg[1], tonumber(attrs.fg[2])
    attrs.fg = nil
  end
  if attrs.bg then
    attrs.background, attrs.ctermbg = attrs.bg[1], tonumber(attrs.bg[2])
    attrs.bg = nil
  end
  vim.api.nvim_set_hl(0, group, attrs)
end