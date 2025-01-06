import math

def is_prime (num):
    for i in range(2,int(math.sqrt(num))+1):
        if num % i == 0:
            return False
    return True

def main ():
    sum_of_primes = 0
    limit = 2000000
    for n in range(2, limit):
        if is_prime(n):
            sum_of_primes += n

    print(sum_of_primes)
main()
