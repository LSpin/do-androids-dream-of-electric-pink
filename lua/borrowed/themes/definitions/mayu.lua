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
  blush     = "#f0f0f0",  -- Lc ~94: normal text, variables, identifiers (neutral off-white)
  pink      = "#ffaacc",  -- Lc ~76: functions, fields
  hotpink   = "#ff77bb",  -- Lc ~63: strings, numbers, regex
  rosepink  = "#ff4499",  -- Lc ~50: constants, builtins

  -- Lilac / purple family — structure, control flow (pink-purple/magenta)
  lavender  = "#f0b8ff",  -- Lc ~74: types, preprocessor
  lilac     = "#e088ee",  -- Lc ~60: keywords
  purple    = "#cc44cc",  -- Lc ~42: conditionals, statements
  dimpurple = "#993399",  -- Lc ~30: operators, brackets

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
