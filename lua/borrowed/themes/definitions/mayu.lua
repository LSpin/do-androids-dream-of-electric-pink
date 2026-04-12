---@type ThemeMeta
local meta = {
  light = false,
}

-- stylua: ignore
---@type ThemePalette
local pal = {
  -- Backgrounds
  mattress  = "#000000",  -- pure black
  sheet     = "#000000",  -- editor background
  blanket   = "#140020",  -- deep purple-tinted selection highlight

  -- Pink family — data, values, text (warm)
  blush     = "#ffe8f0",  -- Lc ~93: normal text, variables, identifiers
  pink      = "#ffaacc",  -- Lc ~76: functions, fields
  hotpink   = "#ff77bb",  -- Lc ~63: strings, numbers, regex
  rosepink  = "#ff4499",  -- Lc ~50: constants, builtins

  -- Lilac / purple family — structure, control flow (cool)
  lavender  = "#ddb8ff",  -- Lc ~72: types, preprocessor
  lilac     = "#bb88ff",  -- Lc ~58: keywords
  purple    = "#9944dd",  -- Lc ~44: conditionals, statements
  dimpurple = "#7733aa",  -- Lc ~33: operators, brackets

  -- Neutrals
  white     = "#ffffff",  -- comments (italic)
  muted     = "#7a4455",  -- deprecated, ignored
}

-- stylua: ignore
---@type ThemeSpec
local spec = {
  syntax = {
    bracket     = "lavender",
    builtin     = "rosepink",
    comment     = "white",
    conditional = "purple",
    const       = "rosepink",
    dep         = "muted",
    field       = "pink",
    func        = "pink",
    ident       = "blush",
    keyword     = "lilac",
    number      = "hotpink",
    operator    = "dimpurple",
    preproc     = "lavender",
    regex       = "hotpink",
    statement   = "purple",
    string      = "hotpink",
    type        = "lavender",
    variable    = "blush",
  },

  diag = {
    error = "rosepink",
    warn  = "hotpink",
    hint  = "lilac",
    info  = "lavender",
    ok    = "pink",
  },

  diag_bg = {
    error = "blanket",
    warn  = "blanket",
    hint  = "blanket",
    info  = "blanket",
    ok    = "blanket",
  },

  diff = {
    add      = "pink",
    removed  = "rosepink",
    changed  = "hotpink",
    conflict = "rosepink",
    ignored  = "muted",
  },

  cursor = {
    fg = "mattress",
    bg = "#ffaacc",
  },

  visual = {
    fg        = "mattress",
    bg        = "lilac",
    cursor_fg = "mattress",
    cursor_bg = "purple",
  },
}

---@type ThemeDefinition
return { meta = meta, palette = pal, spec = spec }
