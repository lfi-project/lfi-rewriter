mrs x1, tpidr_el0
>>>
mov x1, x0
mov w26, w30
ldr x30, [x27, #8]
blr x30
eor x0, x0, x1
eor x1, x0, x1
eor x0, x0, x1
add x30, x27, w26, uxtw
------
mrs x0, tpidr_el0
>>>
mov w26, w30
ldr x30, [x27, #8]
blr x30
add x30, x27, w26, uxtw
------
msr tpidr_el0, x1
>>>
mov w26, w30
eor x0, x0, x1
eor x1, x0, x1
eor x0, x0, x1
ldr x30, [x27, #16]
blr x30
eor x0, x0, x1
eor x1, x0, x1
eor x0, x0, x1
add x30, x27, w26, uxtw
