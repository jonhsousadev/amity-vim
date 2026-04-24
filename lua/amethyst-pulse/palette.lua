-- Paleta de cores do tema Amethyst Pulse
local M = {}

M.colors = {
  -- UI & Backgrounds
  bg           = "#1E1A24",
  bg_dark      = "#1A1620",
  bg_highlight = "#282330",
  bg_selection = "#4A3B5C",
  bg_float     = "#211D29",

  -- Diff backgrounds
  diff_add     = "#1A2A1A",
  diff_delete  = "#2A1A1E",
  diff_change  = "#1A1E2A",
  diff_text    = "#252D40",

  -- Text & UI Elements
  fg           = "#EEE8D5",
  fg_muted     = "#6B6080",
  border       = "#2D283A",

  -- Accent Colors
  purple       = "#BB9AF7",
  blue         = "#7AA2F7",
  cyan         = "#B4F9F8",
  orange       = "#FF9E64",
  str_orange   = "#FFB48A",
  red          = "#F7768E",
  green        = "#9ECE6A",
  yellow       = "#FFB347",
  teal         = "#4EC9B0",
  pink_muted   = "#E0AFAF",

  -- Diagnostic virtual text backgrounds
  diag_error_bg  = "#2D1F24",
  diag_warn_bg   = "#2A2418",
  diag_info_bg   = "#1A1F2D",
  diag_hint_bg   = "#1A2428",
}

return M
