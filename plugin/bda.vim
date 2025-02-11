" Plugin: BDA - Buffer Delete All 
" Description: Reset the buffer list whilst preserving your layout
" Author: Alexander McKay
" Version: 1.0.0

function s:CreateNoNameBuffer() 
  enew
endfunction    

function s:GetNoNameBufferNumber()
  call s:CreateNoNameBuffer()
  return bufnr('%')
endfunction

function s:SwitchWindowsToNoNameBuffer(no_name_buffer_number)
  for winnr in range(1, winnr('$'))
    execute winnr . 'wincmd w'
    execute 'buffer' a:no_name_buffer_number
  endfor
endfunction

function s:DeleteNamedBuffers(no_name_buffer_number)
  for buf in getbufinfo({'buflisted': 1})
    if buf.bufnr != a:no_name_buffer_number
      execute 'bdelete' buf.bufnr
    endif
  endfor
endfunction

function! BDA()
  let no_name_buffer_number = s:GetNoNameBufferNumber()
  call s:SwitchWindowsToNoNameBuffer(no_name_buffer_number)
  call s:DeleteNamedBuffers(no_name_buffer_number)
endfunction

command! Bda call BDA()

cabbrev bda Bda
