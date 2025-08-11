ldr x0, [x1]
>>>
ldr x0, [x27, w1, uxtw]
------
ldp x9, x10, [x2]
>>>
add x28, x27, w2, uxtw
ldp x9, x10, [x28]
------
ldrh w12, [x16, w12, uxtw]
>>>
add x26, x16, w12, uxtw
ldrh w12, [x27, w26, uxtw]
------
ld1 { v16.s }[1], [x11]
>>>
add x28, x27, w11, uxtw
ld1 { v16.s }[1], [x28]
------
ldr x1, [x1, #4188]
>>>
add x28, x27, w1, uxtw
ldr x1, [x28, #4188]
------
ldr x1, [x1, #:lo12:map]
>>>
add x28, x27, w1, uxtw
ldr x1, [x28, #:lo12:map]
------
ldr x0, [x1, #-56]
>>>
add x28, x27, w1, uxtw
ldr x0, [x28, #-56]
------
ldr x19, [x9, :lo12:.L_MergedGlobals+456]
>>>
add x28, x27, w9, uxtw
ldr x19, [x28, :lo12:.L_MergedGlobals+456]
------
stur x8, [x29, #-8] // 8-byte Folded Spill
>>>
add x28, x27, w29, uxtw
stur x8, [x28, #-8]
------
stp xzr, xzr, [x8], #32
>>>
add x28, x27, w8, uxtw
stp xzr, xzr, [x28]
add x8, x8, #32
------
stp xzr, xzr, [x8, #32]!
>>>
add x28, x27, w8, uxtw
stp xzr, xzr, [x28, #32]
add x8, x8, #32
------
ldp x29, x30, [sp], 16
>>>
ldp x29, x26, [sp], 16
add x30, x27, w26, uxtw
------
ldr x30, [sp, #16]
>>>
ldr x26, [sp, #16]
add x30, x27, w26, uxtw
------
ld1 { v0.s }[1], [x8], x10
>>>
add x28, x27, w8, uxtw
ld1 { v0.s }[1], [x28]
add x8, x8, x10
------
ldr x0, [x1, :lo12:foo]
>>>
add x28, x27, w1, uxtw
ldr x0, [x28, :lo12:foo]
------
ldr x0, [x1, :got_lo12:foo]
>>>
add x28, x27, w1, uxtw
ldr x0, [x28, :got_lo12:foo]
------
ldaxr x0, [x2]
>>>
add x28, x27, w2, uxtw
ldaxr x0, [x28]
------
swpal w0, w0, [x1]
>>>
add x28, x27, w1, uxtw
swpal w0, w0, [x28]
------
stlxr w15, w17, [x1]
>>>
add x28, x27, w1, uxtw
stlxr w15, w17, [x28]
------
0: ldaxr x0, [x1]
>>>
0:
add x28, x27, w1, uxtw
ldaxr x0, [x28]
------
ldr x0, [x0, #8]
>>>
add x28, x27, w0, uxtw
ldr x0, [x28, #8]
------
ldp x20, x28, [x0]
ldp x20, x27, [x1]
>>>
add x28, x27, w0, uxtw
ldp x20, xzr, [x28]
add x28, x27, w1, uxtw
ldp x20, xzr, [x28]
------
ld1r {v3.2d}, [x9]
>>>
add x28, x27, w9, uxtw
ld1r {v3.2d}, [x28]
------
ldp x29, x30, [x19, #0xAf]
>>>
add x28, x27, w19, uxtw
ldp x29, x26, [x28, #0xAf]
add x30, x27, w26, uxtw
------
str x30, [x0]
>>>
str x30, [x27, w0, uxtw]
------
stp x29, x30, [x0]
>>>
add x28, x27, w0, uxtw
stp x29, x30, [x28]
------
str x25, [x0]
>>>
str x25, [x27, w0, uxtw]
------
ldp x25, x30, [sp, #30]
>>>
ldp x25, x26, [sp, #30]
add x30, x27, w26, uxtw
------
adrp x0, :got:x;ldr x0, [x0, :got_lo12:x]
>>>
adrp x0, :got:x
add x28, x27, w0, uxtw
ldr x0, [x28, :got_lo12:x]
------
stxrb w11, w10, [x8]
>>>
add x28, x27, w8, uxtw
stxrb w11, w10, [x28]
------
ldr x12, [x11, x0]
>>>
add x26, x11, x0
ldr x12, [x27, w26, uxtw]
------
ldr w4, [sp, w3, uxtw #2]
>>>
add x26, sp, w3, uxtw #2
ldr w4, [x27, w26, uxtw]
------
ld1sb   {z4.h}, p0/z, [x6]
>>>
add x28, x27, w6, uxtw
ld1sb {z4.h}, p0/z, [x28]
------
ldr zt0, [x16]
>>>
add x28, x27, w16, uxtw
ldr zt0, [x28]
------
str zt0, [x16]
>>>
add x28, x27, w16, uxtw
str zt0, [x28]
------
ldp x27, x28, [x28]
>>>
------
stlxrb w17, w1, [x2]
>>>
add x28, x27, w2, uxtw
stlxrb w17, w1, [x28]
