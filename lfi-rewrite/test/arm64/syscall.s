svc #0
>>>
mov x26, x30
ldr x30, [x27]
blr x30
add x30, x27, w22, uxtw
------
ldr x27, [x0]
>>>
------
ldp x20, x27, [x0]
>>>
add x28, x27, w0, uxtw
ldp x20, xzr, [x28]
