---@type ThemeMeta
local meta = {
  light = false,
}

-- stylua: ignore
---@type ThemePalette
local pal = {
  -- Backgrounds (pure black)
  mattress   = "#000000",  -- pure black base
  sheet      = "#000000",  -- editor background
  blanket    = "#0d0d0d",  -- highlight / selection background

  -- Muted tones (de-emphasized UI elements)
  muted      = "#8b4f6b",  -- least important (deprecated, ignored)
  subtle     = "#b06090",  -- secondary (operators, brackets, line numbers)

  -- Pink spectrum (syntax)
  plain      = "#ffffff",  -- white (comments)
  blush      = "#ffd6e8",  -- soft blush (fields)
  brightpink = "#ffc8d3",  -- bright pink (variables, identifiers)
  lightpink  = "#ffb6c1",  -- light pink (functions)
  rose       = "#ff85c2",  -- rose (types, preproc)
  hotpink    = "#ff69b4",  -- hot pink (normal text, strings)
  vivid      = "#ff3399",  -- vivid pink (numbers, constants, builtins)
  neon       = "#ff0080",  -- neon magenta (keywords, conditionals)
}

-- stylua: ignore
---@type ThemeSpec
local spec = {
  syntax = {
    bracket     = "subtle",
    builtin     = "vivid",
    comment     = "plain",
    conditional = "neon",
    const       = "vivid",
    dep         = "muted",
    field       = "blush",
    func        = "lightpink",
    ident       = "brightpink",
    keyword     = "neon",
    number      = "vivid",
    operator    = "subtle",
    preproc     = "rose",
    regex       = "hotpink",
    statement   = "neon",
    string      = "hotpink",
    type        = "rose",
    variable    = "brightpink",
  },

  diag = {
    error = "neon",
    warn  = "vivid",
    hint  = "rose",
    info  = "lightpink",
    ok    = "blush",
  },

  diag_bg = {
    error = "blanket",
    warn  = "blanket",
    hint  = "blanket",
    info  = "blanket",
    ok    = "blanket",
  },

  diff = {
    add      = "lightpink",
    removed  = "neon",
    changed  = "vivid",
    conflict = "neon",
    ignored  = "muted",
  },

  cursor = {
    fg = "mattress",
    bg = "#ff85c2",
  },

  visual = {
    fg        = "mattress",
    bg        = "vivid",
    cursor_fg = "mattress",
    cursor_bg = "neon",
  },
}

---@type ThemeDefinition
return { meta = meta, palette = pal, spec = spec }
