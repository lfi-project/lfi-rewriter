ecall
>>>
sd ra, (sp)
ld ra, (x27)
jalr ra
ld x24, (sp)
add.uw ra, x24, x27
