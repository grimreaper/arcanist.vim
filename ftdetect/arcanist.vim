if !empty($TMPDIR)
    let s:tmp = "$TMPDIR"
else
    if has("mac")
        let s:tmp = '/private/var/folders'
    else
        let s:tmp = '/tmp'
    endif
endif

execute "au BufNewFile,BufRead " . s:tmp . "/*/new-commit setfiletype arcanistdiff"
execute "au BufNewFile,BufRead " . s:tmp . "/*/differential-edit-revision-info setfiletype arcanistdiff"
au BufNewFile,BufRead .arc{config,lint,rc,unit} setfiletype json
