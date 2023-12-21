# references x = 0.995 n = 0 to 100

# precision: default 28

from decimal import Decimal

for n in range(0, 100):
    print(n, Decimal('1.11') ** n)