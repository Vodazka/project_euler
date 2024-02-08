def is_prime(num):
    for i in range(2, int(num**0.5) + 1):
        if num % i == 0:
            return False
    return True

def find_prime(n):
    count = 0
    num = 2

    while count < n:
        if is_prime(num):
            count += 1
            if count == n:
                return num
            
        num += 1

result = find_prime(10001)
print(result)
