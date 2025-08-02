addi sp, sp, 16
>>>
.bundle_align_mode 3
addi x24, sp, 16
add.uw sp, x24, x27
------
sub sp, sp, x0
>>>
.bundle_align_mode 3
sub x24, sp, x0
add.uw sp, x24, x27

