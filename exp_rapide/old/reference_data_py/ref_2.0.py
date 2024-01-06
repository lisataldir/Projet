# references x = 2.0, n = 0 to 100

#precision: default 28
from decimal import Decimal

for n in range(0, 101):
    print(n, Decimal('1.11') ** n)

