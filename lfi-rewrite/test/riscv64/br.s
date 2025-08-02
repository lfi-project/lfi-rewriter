jr x0
>>>
.bundle_align_mode 3
add.uw x9, x0, x27
andi x25, x9, 0xfffffffffffffff8
.bundle_lock
jr x25
.bundle_unlock
------
jalr t4
>>>
.bundle_align_mode 3
add.uw x9, t4, x27
andi x25, x9, 0xfffffffffffffff8
.bundle_lock align_to_end
jalr x25
.bundle_unlock
------
ret
>>>
.bundle_align_mode 3
ret
