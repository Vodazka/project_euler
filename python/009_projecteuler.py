def main ():

    for a in range(1, 1000 // 3):
        for b in range(a + 1, 1000 // 2):
            c = 1000 - a - b

            if (a * a + b * b == c * c):
                product = a * b * c

                print(product)
main()
