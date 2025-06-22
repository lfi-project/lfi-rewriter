adr x0, hello
>>>
adr x0, hello
mov w0, w0
------
str x30, [x0]
>>>
mov w26, w30
str x26, [x27, w0, uxtw]
------
str x30, [sp]
>>>
mov w26, w30
str x26, [sp]
------
stp x29, x30, [sp]
>>>
mov w26, w30
stp x29, x26, [sp]
------
str x30, [x0, #0xf0]
>>>
add x28, x27, w0, uxtw
mov w26, w30
str x26, [x28, #0xf0]
------
mov x29, sp
>>>
mov w29, wsp
------
add x0, sp, #0x20
>>>
add w0, wsp, #0x20
------
ldr x25, [x0]
>>>
------
str x25, [x0]
>>>
------
str x27, [x0]
>>>
------
ldp x25, x26, [x0]
>>>
add x28, x27, w0, uxtw
ldp xzr, x26, [x28]
------
stp x25, x26, [x0]
>>>
add x28, x27, w0, uxtw
stp xzr, x26, [x28]
------
mov x2, x30
>>>
mov w2, w30
