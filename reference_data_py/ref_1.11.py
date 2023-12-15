# references x = 1.11 n = 0 to 6801

# precision: default 28

from decimal import Decimal

for n in range(0, 6802):
    print(n, Decimal('1.11') ** n)