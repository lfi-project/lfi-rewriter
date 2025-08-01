jr x0
>>>
.bundle_align_mode 2
add.uw x9, x0, x27
andi x25, x9, 0xfffffffffffffffc
.bundle_lock
jr x25
.bundle_unlock
.p2align 2
------
jalr t4
>>>
.bundle_align_mode 2
add.uw x9, t4, x27
andi x25, x9, 0xfffffffffffffffc
.bundle_lock align_to_end
jalr x25
.bundle_unlock
------
ret
>>>
.bundle_align_mode 2
ret