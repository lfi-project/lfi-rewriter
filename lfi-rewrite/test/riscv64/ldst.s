ld t0, (t1)
>>>
add.uw x26, t1, x27
ld t0, (x26)
------
ld t0, 16(t1)
>>>
add.uw x26, t1, x27
ld t0, 16(x26)
------
sd t0, (t1)
>>>
add.uw x26, t1, x27
sd t0, (x26)
------
sd t0, 16(t1)
>>>
add.uw x26, t1, x27
sd t0, 16(x26)
------
lw t0, (t1)
>>>
add.uw x26, t1, x27
lw t0, (x26)
------
lhu t0, 16(t1)
>>>
add.uw x26, t1, x27
lhu t0, 16(x26)
------
sb t0, (t1)
>>>
add.uw x26, t1, x27
sb t0, (x26)
------
ld t5, (gp)
sd t0, 25(t1)
>>>
add.uw x26, gp, x27
ld t5, (x26)
add.uw x26, t1, x27
sd t0, 25(x26)
------
ld t5, (sp)
>>>
ld t5, (sp)
------
ld sp, (a0)
>>>
add.uw x26, a0, x27
ld x24, (x26)
add.uw sp, x24, x27
