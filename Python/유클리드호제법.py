#  유클리드 호제법: 2개의 자연수(또는 정식) a, b에 대해서 a를 b로 나눈 나머지를 r이라 하면(단, a>b),
# a와 b의 최대공약수는 b와 r의 최대공약수와 같다.
# 이 성질에 따라, b를 r로 나눈 나머지 r'를 구하고, 
# 다시 r을 r'로 나눈 나머지를 구하는 과정을 반복하여 나머지가 0이 되었을 때 나누는 수가 a와 b의 최대공약수이다.
def gcd(a,b):
    if a%b==0: 
        return b
    return gcd(b, a%b)

def solution(numer1, denom1, numer2, denom2):
    answer = []

    a=gcd(numer1,numer2)
    num=(denom1*numer2+denom2*numer1)
    dem= denom1*denom2
    g= gcd(dem,num)
    answer.append(num//g)
    answer.append(dem//g)
    return answer
    
solution(1,2,3,4)