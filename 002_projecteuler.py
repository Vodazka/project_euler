lim=4000000
result=0
n1=1  
n2=2

while n2<lim:
    if n2%2==0: result+=n2
    n3=n1+n2
    n1,n2=n2,n3

print(result)