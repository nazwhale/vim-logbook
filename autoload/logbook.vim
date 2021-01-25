""
" Open today's logbook in the current buffer
function! logbook#Execute()
	let logfile = "~/logbook/" . strftime("%F") . ".md"
	execute "edit " . logfile
endfunction

""
" Insert a timestamp under the cursor
function! logbook#Timestamp()
	execute "normal! i" . strftime("%c") . "\n- \<ESC>"
endfunction

""
" Insert a new line below with an empty checkbox
function! logbook#NewItem()
	execute "normal! A\n[] "
  execute "startinsert!"
endfunction  

""
" Mark current line as complete
function! logbook#MarkComplete()
	execute "normal! I\<ESC>f]F+rx\<ESC>"
endfunction  

""
" Mark current line as in progress
function! logbook#MarkInProgress()
	execute "normal! I\<ESC>f]i+\<ESC>"
endfunction  
