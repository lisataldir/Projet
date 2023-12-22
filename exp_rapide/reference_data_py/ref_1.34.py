# references x = 1.34907566301, n = 0 to 100

#precision: float 9, double 17, default 28 and defined 50
from decimal import Decimal

for n in range(0, 101):
    print(n, Decimal('1.34907566301') ** n)