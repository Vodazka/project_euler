n = 1

for i in range(2, 21):
    if n % i != 0:
        j = 2
        while i % j != 0:
            j += 1
        n *= j

print(n)
