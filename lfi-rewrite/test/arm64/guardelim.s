stur x0, [x1, #1]
stur x0, [x1, #2]
stur x0, [x1, #3]
stur x0, [x1, #4]
>>>
add x28, x27, w1, uxtw
stur x0, [x28, #1]
stur x0, [x28, #2]
stur x0, [x28, #3]
stur x0, [x28, #4]
------
stur x0, [x1, #1]
stur x0, [x1, #2]
tbnz foo
stur x0, [x1, #3]
stur x0, [x1, #4]
>>>
add x28, x27, w1, uxtw
stur x0, [x28, #1]
stur x0, [x28, #2]
tbnz foo
add x28, x27, w1, uxtw
stur x0, [x28, #3]
stur x0, [x28, #4]
------
stur x0, [x1, #1]
stur x0, [x1, #2]
label:
stur x0, [x1, #3]
stur x0, [x1, #4]
>>>
add x28, x27, w1, uxtw
stur x0, [x28, #1]
stur x0, [x28, #2]
label:
add x28, x27, w1, uxtw
stur x0, [x28, #3]
stur x0, [x28, #4]
------
stur x0, [x1, #1]
stur x0, [x1, #2]
mov x1, x2
stur x0, [x1, #3]
stur x0, [x1, #4]
>>>
add x28, x27, w1, uxtw
stur x0, [x28, #1]
stur x0, [x28, #2]
mov x1, x2
add x28, x27, w1, uxtw
stur x0, [x28, #3]
stur x0, [x28, #4]
------
stp x3, x3, [x1, #16]
adrp x28, underflow
add x3, x3, #0x38
stp x2, x2, [x1, #32]
>>>
add x28, x27, w1, uxtw
stp x3, x3, [x28, #16]
adrp x28, underflow
add x3, x3, #0x38
add x28, x27, w1, uxtw
stp x2, x2, [x28, #32]
------
stur x0, [x1, #16]
ldp x0, x1, [sp]
stur x0, [x1, #16]
>>>
add x28, x27, w1, uxtw
stur x0, [x28, #16]
ldp x0, x1, [sp]
add x28, x27, w1, uxtw
stur x0, [x28, #16]
