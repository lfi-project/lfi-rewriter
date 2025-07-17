mv a0, tp
>>>
mv x24, ra
ld ra, 8(x27)
jalr ra
add.uw ra, x24, x27
------
mv a1, tp
>>>
mv a1, a0
mv x24, ra
ld ra, 8(x27)
jalr ra
xor a0, a0, a1
xor a1, a0, a1
xor a0, a0, a1
add.uw ra, x24, x27
------
mv tp, a0
>>>
mv x24, ra
ld ra, 16(x27)
jalr ra
add.uw ra, x24, x27
------
mv tp, a1
>>>
mv x24, ra
xor a0, a0, a1
xor a1, a0, a1
xor a0, a0, a1
ld ra, 16(x27)
jalr ra
xor a0, a0, a1
xor a1, a0, a1
xor a0, a0, a1
add.uw ra, x24, x27
