# references x = 1.11 n = 0 to 200

# precision: default 28

from decimal import Decimal

for n in range(0, 201):
    print(n, Decimal('1.11') ** n)