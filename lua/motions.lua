local M = {}

function M.setup(config)
    vim.cmd([[
    fun! SetMotionsKeymaps()
        nnoremap <nowait><buffer> d x
        xnoremap <nowait><buffer> d x
        nnoremap <nowait><buffer> D "_D
        xnoremap <nowait><buffer> D "_x
        nnoremap <nowait><buffer> s "_s
        xnoremap <nowait><buffer> s "_s
        nnoremap <nowait><buffer> c viw
        xnoremap <nowait><buffer> c <esc>viw
        nnoremap <nowait><buffer> C viW
        xnoremap <nowait><buffer> C <esc>viW
        nnoremap <nowait><buffer> x V
        xnoremap <nowait><buffer> x vvV
        nnoremap <nowait><buffer> V v$<left>
        xnoremap <nowait><buffer> V $<left>
        nnoremap <nowait><buffer> y yl
        nnoremap <nowait><buffer> Y v$<left>y
        xnoremap <nowait><buffer> y y
    endfun

    augroup set_motions_keymaps
        autocmd!
        autocmd BufRead,BufNewFile,FilterReadPre,FileReadPre * :call SetMotionsKeymaps()
        autocmd FileType * :call SetMotionsKeymaps()
    augroup end

    call SetMotionsKeymaps()
    ]])
end

return M
