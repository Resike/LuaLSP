Requires: https://github.com/sublimelsp/LSP

Sublime Text settings:
c:\Users\User\AppData\Roaming\Sublime Text 3\Packages\User\LSP.sublime-settings
```
{
	"auto_show_diagnostics_panel": "never",
	"auto_show_diagnostics_panel_level": 0,
	"clients":
	{
		"wow lua-ls":
		{
			"command":
			[
				"c:/Users/Resike/AppData/Roaming/Sublime Text 3/Packages/LuaLSP/server/bin/Windows/lua-language-server",
				"-E",
				"c:/Users/Resike/AppData/Roaming/Sublime Text 3/Packages/LuaLSP/server/main.lua"
			],
			"enabled": true,
			"languages": [{"languageId": "lua"}],
			"settings": {
				"Lua": {
					"completion": {
						"enable": false,
					},
					"diagnostics": {
						"enable": false,
					},
					"runtime": {
						"version": "Lua 5.1",
					},
					"workspace": {
						"maxPreload": 1500,
						"preloadFileSize": 3000,
					},
				},
			},
		},
	},
	"diagnostics_gutter_marker": "",
	"diagnostics_highlight_style": "",
	"disabled_capabilities":
	[
		"completion",
		"diagnostics",
	],
	"document_highlight_style": "",
	"show_diagnostics_count_in_view_status": false,
	"show_diagnostics_in_view_status": false,
	"show_diagnostics_severity_level": 0,
}
