sd t0, (t1)
>>>
.bundle_align_mode 3
add.uw x9, t1, x27
sd t0, (x9)
------
sd t0, 16(t1)
>>>
.bundle_align_mode 3
add.uw x9, t1, x27
sd t0, 16(x9)

