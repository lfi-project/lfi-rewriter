eor x1, x1, x3, ror #(64 - 23)
subs x1, x1, 64 - 23
>>>
eor x1, x1, x3, ror #(64 - 23)
subs x1, x1, 64 - 23
------
fmov d10, 2.5e1-1
fmov d10, 2.5e1+1
>>>
fmov d10, 2.5e1-1
fmov d10, 2.5e1+1
------
add sp, sp, #16
>>>
add x26, sp, #16
add sp, x27, w26, uxtw
------
sub sp, sp, x0
>>>
sub x26, sp, x0
add sp, x27, w26, uxtw
------
mov sp, x0
>>>
add sp, x27, w0, uxtw
------
add x25, x1, w25, sxtw
>>>
add x25, x1, w25, sxtw
------
sub sp, sp, #8 // Storing d9 using { sub sp,sp,#8; str d9,[sp] } is giving bus error.
>>>
sub x26, sp, #8 
add sp, x27, w26, uxtw
