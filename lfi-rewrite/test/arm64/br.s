br x0
>>>
add x28, x27, w0, uxtw
br x28
------
blr x0
>>>
add x28, x27, w0, uxtw
blr x28
------
ret
>>>
ret
------
.tlsdesccall _foo
blr x0
>>>
add x28, x27, w0, uxtw
.tlsdesccall _foo
blr x28
------
ret x15
>>>
add x28, x27, w15, uxtw
ret x28
