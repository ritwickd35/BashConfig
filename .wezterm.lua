-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 14

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 8

-- default window sizes

config.initial_cols = 140
config.initial_rows = 40

-- my coolnight colorscheme:
config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

config.keys = {
   	 -- Make Option-Left go to prev word
	{
		key="LeftArrow",
      		mods="OPT",
      		action=wezterm.action{SendString="\x1bb"}
    	},
    	-- Make Option-Right go to next word
	{
      		key="RightArrow",
      		mods="OPT",
      		action=wezterm.action{SendString="\x1bf"}
    	},
	-- Make CMD-Left go to the start of line
    	{
   		key = 'LeftArrow',
   		mods = 'CMD',
   		action = wezterm.action { SendString = "\x1bOH" },
    	},
	-- Make CMD-Right go to the end of line
 	{
   		key = 'RightArrow',
   		mods = 'CMD',
   		action = wezterm.action { SendString = "\x1bOF" },
 	},
}

-- and finally, return the configuration to wezterm
return config

