---@type ThemeMeta
local meta = {
  light = false,
}

-- stylua: ignore
---@type ThemePalette
local pal = {
  -- Backgrounds
  mattress   = "#000000",  -- pure black
  sheet      = "#000000",  -- editor background
  blanket    = "#110008",  -- barely-visible selection / highlight background

  -- Five luminance tiers (WCAG 3 / APCA on black)
  -- Each tier is clearly distinct in perceived brightness for colorblind users
  plain      = "#ffe0ee",  -- Tier 1 (Lc ~92): primary text — very pale pink
  lightpink  = "#ff99cc",  -- Tier 2 (Lc ~72): functions, fields
  hotpink    = "#ff6699",  -- Tier 3 (Lc ~58): strings, types, regex
  vivid      = "#c084e0",  -- Tier 4 (Lc ~58): keywords, numbers (+ bold) — lilac
  subtle     = "#aa3366",  -- Tier 5a (Lc ~35): operators, brackets
  muted      = "#ffffff",  -- comments (+ italic) — white
}

-- stylua: ignore
---@type ThemeSpec
local spec = {
  syntax = {
    bracket     = "subtle",
    builtin     = "vivid",
    comment     = "muted",
    conditional = "vivid",
    const       = "vivid",
    dep         = "muted",
    field       = "lightpink",
    func        = "lightpink",
    ident       = "plain",
    keyword     = "vivid",
    number      = "vivid",
    operator    = "subtle",
    preproc     = "plain",
    regex       = "hotpink",
    statement   = "vivid",
    string      = "hotpink",
    type        = "hotpink",
    variable    = "plain",
  },

  diag = {
    error = "vivid",
    warn  = "hotpink",
    hint  = "lightpink",
    info  = "plain",
    ok    = "lightpink",
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
    removed  = "vivid",
    changed  = "hotpink",
    conflict = "vivid",
    ignored  = "muted",
  },

  cursor = {
    fg = "mattress",
    bg = "#ff99cc",
  },

  visual = {
    fg        = "mattress",
    bg        = "hotpink",
    cursor_fg = "mattress",
    cursor_bg = "vivid",
  },
}

---@type ThemeDefinition
return { meta = meta, palette = pal, spec = spec }
