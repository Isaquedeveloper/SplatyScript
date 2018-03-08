import _sslibs_\String.ss
import _sslibs_\Colors.ss

set_fore_color yellow
print "Splaty Terminal v0.2, SplatyScript version: "
buf=unknow
io_read buf C:\Splaty\Info.inf
print buf
print .\n
set_fore_color pink
println "Type any SplatyScript comand to execute; type 'exit' to exit."
set_fore_color red
println "(Update comand is not working on this version. To update SplatyScript, run SplatyScript installer.)"
set_fore_color white

title "Splaty Terminal v0.2"

function GetColor word
v=none
if word = print
v=green
endif
if word = println
v=green
endif
if word = set_fore_color
v=green
endif
if word = set_back_color
v=green
endif
if word = io_make
v=yellow
endif
if word = io_read
v=yellow
endif
if word = call
v=red
endif

if word = callp
v=red
endif

if word = import
v=blue
endif

if word = class
v=pink
endif

if word = function
v=pink
endif

if word = if
v=blue
endif

if word = while
v=blue
endif

if word = start
v=yellow
endif

if word = kill
v=yellow
endif

if v = none
v=white
endif
return v
endfunc

x=0
y=0

function exec
spl=split cmd %
first=spl@0
c=GetColor first
set_fore_color c
set_cursor_pos x y
val_f=spl@0
if val_f ! "spl@0"
print val_f
endif
set_fore_color white
l=length_of@spl
indx=1
#while indx < l
#print %
#print spl@indx
#indx=indx+1
#print spl@indx
#endwhile
println (empty)
indx=0
callp cmd
endfunc

function FOREVER_LOOP
x=get_cursor_x
y=get_cursor_y
cmd=read
exec
endfunc