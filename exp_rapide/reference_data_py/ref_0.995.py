# references x = 0.995 n = 0 to 100

# precision: default 28

from decimal import Decimal

for n in range(0, 101):
    print(n, Decimal('0.995') ** n)