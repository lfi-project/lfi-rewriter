bl foo
>>>
.bundle_align_mode 4
.p2align 4
.bundle_lock
sub x23, x23, #0
fmov d31, x23
fneg d31, d31
bl foo
.bundle_unlock
------
blr x0
>>>
.bundle_align_mode 4
add x28, x27, w0, uxtw
bic x24, x28, 0xf
.p2align 4
.bundle_lock
sub x23, x23, #0
fmov d31, x23
fneg d31, d31
blr x24
.bundle_unlock
------
br x0
>>>
.bundle_align_mode 4
add x28, x27, w0, uxtw
bic x24, x28, 0xf
.bundle_lock
sub x23, x23, #0
fmov d31, x23
fneg d31, d31
br x24
.bundle_unlock
