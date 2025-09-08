return {
	"lervag/vimtex",
	lazy = false, -- we don't want to lazy load VimTeX
	-- tag = "v2.15", -- uncomment to pin to a specific release
	init = function()
		-- VimTeX configuration goes here, e.g.
		---- Use biber with latexmk
		-- init.lua (anywhere before opening .tex)
		vim.g.vimtex_compiler_latexmk = {
			options = {
				"-pdf",
				"-interaction=nonstopmode",
				"-synctex=1",
				-- no -bibtex and no -use-biber
			},
		}
		vim.g.vimtex_view_zathura_use_synctex = 0
		vim.g.vimtex_view_method = "zathura_simple"
	end,
}
-- local leader = '\'
-- <localleader>li  |<plug>(vimtex-info)|                           `n`
-- <localleader>lI  |<plug>(vimtex-info-full)|                      `n`
-- <localleader>lt  |<plug>(vimtex-toc-open)|                       `n`
-- <localleader>lT  |<plug>(vimtex-toc-toggle)|                     `n`
-- <localleader>lq  |<plug>(vimtex-log)|                            `n`
-- <localleader>lv  |<plug>(vimtex-view)|                           `n`
-- <localleader>lr  |<plug>(vimtex-reverse-search)|                 `n`
-- <localleader>ll  |<plug>(vimtex-compile)|                        `n`
-- <localleader>lL  |<plug>(vimtex-compile-selected)|               `nx`
