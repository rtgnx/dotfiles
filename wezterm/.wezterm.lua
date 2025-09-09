local wezterm = require("wezterm")

return {
	-- Monospaced Nerd Font
	font = wezterm.font("FiraCode Nerd Font Mono"),
	font_size = 14.0,
	line_height = 1.2,

	-- Enable ligatures
	harfbuzz_features = { "calt=1", "liga=1" },

	-- Colors
	color_scheme = "Builtin Solarized Dark",

	-- Window settings
	window_background_opacity = 0.95,
	enable_tab_bar = false,
	hide_tab_bar_if_only_one_tab = false,

	-- Keyboard shortcuts
	keys = {
		{ key = "C", mods = "CTRL|SHIFT", action = wezterm.action({ CopyTo = "Clipboard" }) },
		{ key = "V", mods = "CTRL|SHIFT", action = wezterm.action({ PasteFrom = "Clipboard" }) },
	},

	-- Misc
	enable_scroll_bar = true,
}
