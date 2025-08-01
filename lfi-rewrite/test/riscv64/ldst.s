ld t0, (t1)
>>>
.bundle_align_mode 2
add.uw x9, t1, x27
ld t0, (x9)
------
ld t0, 16(t1)
>>>
.bundle_align_mode 2
add.uw x9, t1, x27
ld t0, 16(x9)
------
sd t0, (t1)
>>>
.bundle_align_mode 2
add.uw x9, t1, x27
sd t0, (x9)
------
sd t0, 16(t1)
>>>
.bundle_align_mode 2
add.uw x9, t1, x27
sd t0, 16(x9)
------
lw t0, (t1)
>>>
.bundle_align_mode 2
add.uw x9, t1, x27
lw t0, (x9)
------
lhu t0, 16(t1)
>>>
.bundle_align_mode 2
add.uw x9, t1, x27
lhu t0, 16(x9)
------
sb t0, (t1)
>>>
.bundle_align_mode 2
add.uw x9, t1, x27
sb t0, (x9)
------
ld t5, (gp)
sd t0, 25(t1)
>>>
.bundle_align_mode 2
add.uw x9, gp, x27
ld t5, (x9)
add.uw x9, t1, x27
sd t0, 25(x9)
------
ld t5, (sp)
>>>
.bundle_align_mode 2
ld t5, (sp)
------
ld sp, (a0)
>>>
.bundle_align_mode 2
add.uw x9, a0, x27
ld x24, (x9)
add.uw sp, x24, x27
