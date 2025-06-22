ldr x0, [x1]
>>>
ldr x0, [x1]
------
str x0, [x1]
>>>
str x0, [x27, w1, uxtw]
------
ldadd x0, x1, [x2]
>>>
add x28, x27, w2, uxtw
ldadd x0, x1, [x28]
