""
" Open today's logbook in the current buffer
command! -nargs=0 Lb call logbook#Execute()

""
" Insert a timestamp under the cursor
command! -nargs=0 Ts call logbook#Timestamp()

""
" Insert a new row below
command! -nargs=0 Ni call logbook#NewItem()

""
" Mark as complete
command! -nargs=0 C call logbook#MarkComplete()
