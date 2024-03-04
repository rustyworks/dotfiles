local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.colors = {
  background = '#616060',
  foreground = '#f8f8f8',
  cursor_bg = '#f8f8f8',
  cursor_fg = '#404040'
}
config.color_scheme = 'zenburn'

config.font = wezterm.font_with_fallback {
  'C:\\Users\\rusty\\bitmap_fonts\\FF8-32.bdf',
  {family='FF8', weight=800, italic=false},
  'C:\\Users\\rusty\\bitmap_fonts\\spleen-12x24.otb',
  {family='Spleen 12x24', weight=500, italic=false},
}
-- check good font using this:
-- oO08 iIlL1 g9qCGQ
-- â é ù ï ø ç Ã Ē Æ
-- illegal1 = 0Oo
config.font_dirs = { 'bitmap_fonts' }
config.font_size = 19

-- command: wezterm.exe ls-fonts --list-system | grep -i ff8

config.audible_bell = 'Disabled'
config.default_cursor_style = 'SteadyBlock'
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

config.default_domain = 'WSL:Arch'

return config
