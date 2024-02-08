palindrome=0

for n1 in range(100,1000) :
    for n2 in range(100,1000) :
        result = n1*n2
        result_str = str(result)

        if result_str == result_str[::-1]:
            if result>palindrome:
                palindrome=result

print (palindrome )               