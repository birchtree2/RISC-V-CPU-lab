main:
    addi  x1, x0, 1      # x1 = 0x1
    addi  x2, x0, 1      # x2 = 0x1
    addi  x3, x0, 1      # x3 = 0x1
    addi  x4, x0, 1      # x4 = 0x1
    lw    x5, 0x8(x0)    # x5 = 0x8000_0000
    addi  x0, x0, 0
    addi  x0, x0, 0
    addi  x0, x0, 0
    add   x6, x5, x1     # x6 = 0x8000_0001
    xor   x7, x1, x2     # x7 = 0
    addi  x0, x0, 0
    addi  x0, x0, 0
    beq   x5, x6, error  # 不跳转
    addi  x0, x0, 0
    addi  x0, x0, 0
    addi  x0, x0, 0
    sub   x8, x1, x7     # x8 = 1
    xori  x9, x3, -1     # x9 = 0xFFFF_FFFE
    sw    x6, 0x4(x0)    # mem[1] = 0x8000_0001
    bne   x5, x6, test1  # jump to test1
    addi  x0, x0, 0
    addi  x0, x0, 0
    addi  x0, x0, 0
    jal   x30, error     # x30 = pc + 4 则出错
    addi  x0, x0, 0
    addi  x0, x0, 0
    addi  x0, x0, 0

test1:
    lw    x10, 0x4(x0)    # x10 = 0x8000_0001
    addi  x0, x0, 0
    addi  x0, x0, 0
    srl   x11, x5, x8     # x11 = 0x4000_0000
    slt   x12, x10, x9    # x12 = 0x1
    and   x13, x9, x10    # x13 = 0x8000_0000
    sltu  x14, x10, x9    # x14 = 0x1
    srl   x15, x11, x9    # x15 = 0x1
    addi  x0, x0, 0
    addi  x0, x0, 0
    addi  x0, x0, 0
    beq   x15, x12, test2
    addi  x0, x0, 0
    addi  x0, x0, 0
    addi  x0, x0, 0
    jal   x30, error      # x30 = pc + 4 则出错
    addi  x0, x0, 0
    addi  x0, x0, 0
    addi  x0, x0, 0

test2:
    ori   x16, x14, 0x666 # x16 = 0x0000_0667
    addi  x0, x0, 0
    addi  x0, x0, 0
    addi  x0, x0, 0
    sub   x16, x16, x14   # x16 = 0x0000_0666
    jal   x0, main
    addi  x0, x0, 0
    addi  x0, x0, 0
    addi  x0, x0, 0

error:
    addi  x30, x30, -4    # 定位出错点
loop:
    addi  x31, x0, -1
    jal   x0, loop
    addi  x0, x0, 0
    addi  x0, x0, 0
    addi  x0, x0, 0