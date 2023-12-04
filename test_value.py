# calculate "standard" values for unit tests
# default precision is 28 digits

from decimal import Decimal, getcontext
getcontext().prec = 9
# to define a precision of 50 digits

r1 = Decimal('2.0') ** 39
r2 = Decimal('2.0') ** 217

print("2.0 ^ 39 = ", r1)
print("2.0 ^ 217 = ", r2)

r3 = Decimal('18.9') ** 6
r4 = Decimal('18.9') ** 50
r5 = Decimal('18.9') ** 100

print("18.9 ^ 6 = ", r3)
print("18.9 ^ 50 = ", r4)
print("18.9 ^ 100 = ", r5)

r6 = Decimal('42.73') ** 13
r7 = Decimal('42.73') ** 74
r8 = Decimal('42.73') ** 80

print("42.73 ^ 13 = ", r6)
print("42.73 ^ 74 = ", r7)
print("42.73 ^ 80 = ", r8)

r9 = Decimal('111.11') ** 8
r10 = Decimal('111.11') ** 26
r11 = Decimal('111.11') ** 47

print("111.11 ^ 8 = ", r9)
print("111.11 ^ 26 = ", r10)
print("111.11 ^47 = ", r11)

r12 = Decimal('6543.2') ** 10
r13 = Decimal('6543.2') ** 32

print("6543.2 ^ 10 = ", r12)
print("6543.2 ^ 32 = ", r13)

r13 = Decimal('2.0') ** 25
r14 = Decimal('2.0') ** 58
r15 = Decimal('2.0') ** 432

print("2.0 ^ 25 = ", r13)
print("2.0 ^ 58 = ", r14)
print("2.0 ^ 432 = ", r15)

r16 = Decimal('9.35') ** 7
r17 = Decimal('9.35') ** 23
r18 = Decimal('9.35') ** 45
r19 = Decimal('9.35') ** 102

print("9.35 ^ 7 = ", r16)
print("9.35 ^ 23 = ", r17)
print("9.35 ^ 45 = ", r18)
print("9.35 ^ 102 = ", r19)

r20 = Decimal('37.73') ** 9
r21 = Decimal('37.73') ** 41
r22 = Decimal('37.73') ** 73

print("37.73 ^ 9 = ", r20)
print("37.73 ^ 41 = ", r21)
print("37.73 ^ 73 = ", r22)

r23 = Decimal('278.4') ** 16
r24 = Decimal('278.4') ** 59

print("278.4 ^ 16 = ", r23)
print("278.4 ^ 59 = ", r24)

r25 = Decimal('2946.33') ** 4
r26 = Decimal('2946.33') ** 32

print("2946.33 ^ 4 = ", r25)
print("2946.33 ^ 32 = ", r26)

r27 = Decimal('2.0') ** 12
r28 = Decimal('2.0') ** 47
r29 = Decimal('2.0') ** 66
r30 = Decimal('2.0') ** 278

print("2.0 ^ 12 = ", r27)
print("2.0 ^ 47 = ", r28)
print("2.0 ^ 66 = ", r29)
print("2.0 ^ 278 = ", r30)

r31 = Decimal('5.6') ** 4
r32 = Decimal('5.6') ** 17
r33 = Decimal('5.6') ** 99
r34 = Decimal('5.6') ** 211

print("5.6 ^ 4 = ", r31)
print("5.6 ^ 17 = ", r32)
print("5.6 ^ 99 = ", r33)
print("5.6 ^ 211 = ", r34)

r35 = Decimal('13.47') ** 8
r36 = Decimal('13.47') ** 34
r37 = Decimal('13.47') ** 80

print("13.47 ^ 8 = ", r35)
print("13.47 ^ 34 = ", r36)
print("13.47 ^ 80 =", r37)

r38 = Decimal('432.1') ** 6
r39 = Decimal('432.1') ** 22
r40 = Decimal('432.1') ** 53

print("432.1 ^ 6 = ", r38)
print("432.1 ^ 22 = ", r39)
print("432.1 ^ 53 = ", r40)

r41 = Decimal('3557.6') ** 3
r42 = Decimal('3557.6') ** 10
r43 = Decimal('3557.6') ** 20

print("3557.6 ^ 3 = ", r41)
print("3557.6 ^ 10 = ", r42)
print("3557.6 ^ 20 = ", r43)

r44 = Decimal('2.0') ** 41
r45 = Decimal('2.0') ** 119
r46 = Decimal('2.0') ** 533

print("2.0 ^ 41 = ", r44)
print("2.0 ^ 119 = ", r45)
print("2.0 ^ 533 = ", r46)

r47 = Decimal('6.9') ** 8
r48 = Decimal('6.9') ** 22
r49 = Decimal('6.9') ** 67
r50 = Decimal('6.9') ** 100

print("6.9 ^ 8 = ", r47)
print("6.9 ^ 22 = ", r48)
print("6.9 ^ 67 = ", r49)
print("6.9 ^ 100 = ", r50)

r51 = Decimal('44.44') ** 5
r52 = Decimal('44.44') ** 19
r53 = Decimal('44.44') ** 55

print("44.44 ^ 5 = ", r51)
print("44.44 ^ 19 = ", r52)
print("44.44 ^ 55 = ", r53)

r54 = Decimal('233.33') ** 9
r55 = Decimal('233.33') ** 17
r56 = Decimal('233.33') ** 32

print("233.33 ^ 9 = ", r54)
print("233.33 ^ 17 = ", r55)
print("233.33 ^ 32 = ", r56)

r57 = Decimal('1111.567') ** 7
r58 = Decimal('1111.567') ** 13
r59 = Decimal('1111.567') ** 31

print("1111.567 ^ 7 = ", r57)
print("1111.567 ^ 13 = ", r58)
print("1111.567 ^ 31 = ", r59)