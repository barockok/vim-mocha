let s:plugin_path = expand("<sfile>:p:h:h")

if !exists("g:mocha_runner")
  let g:mocha_runner = "os_x_terminal"
endif

if !exists("g:mocha_command")
  let s:cmd = "mocha {mocha_spec}"

  if has("gui_running") && has("gui_macvim")
    let g:mocha_command = "silent !" . s:plugin_path . "/bin/" . g:mocha_runner . " '" . s:cmd . "'"
  elseif has("win32") && fnamemodify(&shell, ':t') ==? "cmd.exe"
    let g:mocha_command = "!cls && echo " . s:cmd . " && " . s:cmd
  else
    let g:mocha_command = "!clear && echo " . s:cmd . " && " . s:cmd
  endif
endif

function! RunAllMochaSpecs()
  let l:mocha_spec = ""
  call SetLastMochaSpecCommand(l:mocha_spec)
  call RunMochaSpecs(l:mocha_spec)
endfunction

function! RunCurrentMochaSpecFile()
  if InMochaSpecFile()
    let l:mocha_spec = @%
    call SetLastMochaSpecCommand(l:mocha_spec)
    call RunMochaSpecs(l:mocha_spec)
  else
    call RunLastMochaSpec()
  endif
endfunction

function! RunNearestMochaSpec()
  if InMochaSpecFile()
    let l:mocha_spec = @% . ":" . line(".")
    call SetLastMochaSpecCommand(l:mocha_spec)
    call RunMochaSpecs(l:mocha_spec)
  else
    call RunLastMochaSpec()
  endif
endfunction

function! RunLastMochaSpec()
  if exists("s:last_mocha_spec_command")
    call RunMochaSpecs(s:last_mocha_spec_command)
  endif
endfunction

function! InMochaSpecFile()
  return match(expand("%"), "_spec.coffee$") != -1 || match(expand("%"), "_spec.js$") != -1
endfunction

function! SetLastMochaSpecCommand(mocha_spec)
  let s:last_mocha_spec_command = a:mocha_spec
endfunction

function! RunMochaSpecs(mocha_spec)
  execute substitute(g:mocha_command, "{mocha_spec}", a:mocha_spec, "g")
endfunction
