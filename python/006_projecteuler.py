sumOFsquare = sum(i ** 2 for i in range(1, 101))

squareOFsum = sum(i for i in range (1, 101)) ** 2

difference = squareOFsum - sumOFsquare

print(difference)