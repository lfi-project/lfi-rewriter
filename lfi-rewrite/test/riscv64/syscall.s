ecall
>>>
.bundle_align_mode 3
mv x24, ra
ld ra, (x27)
jalr ra
add.uw x26, x24, x27
andi ra, x26, 0xfffffffffffffff8
