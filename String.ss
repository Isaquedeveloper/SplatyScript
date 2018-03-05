function split str char
length=0
length=length_ofstr@str
index=0
result=(empty)
while index < length

if index > 1000
break
endif

ch=null
strchar ch str index

if ch = char
result=result+,
endif
if ch ! char
result=result+ch
endif
index=index+1
endwhile
submitArray result
return result
endfunc

#String tools library, by Traingames
