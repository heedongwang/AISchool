package 매서드;

public class EX08완전수구하기 {

	public static void main(String[] args) {
//		int num1 = 10;
//		int num2 = 2;
//		boolean divisor = isDivisor(num1, num2); // 약수인지 아닌지
//		System.out.println(divisor);
//
		getDivisor(10);

		int num = 10;
		int result = getSumOfDivisors(num);
		System.out.println(num + "의 약수의 합: " + result);
		
		//isperfect: 완전수-> 나를 제외한 약수들의 합이 나와 같은것
		int num3=28;
		boolean result2=isPerfectNumber(num3);
		System.out.println(result2);
		
		
		int start=2;
		int end=1000;
		getPerfectNumber(start,end);
		

	}

	// isDivisor: 약수인지 아닌지 확인
	public static boolean isDivisor(int num1, int num2) {
		if (num1 % num2 == 0)
			return true;
		else
			return false;
	}

	// getDivisor: 약수 나열
	public static void getDivisor(int a) {

		System.out.print(a + "의 약수: ");

		for (int i = 1; i <= a; i++) {
			if (a % i == 0) {
				System.out.print(i + " ");
			}
		}
		System.out.println();
	}

	// getSumOfDivisors(): 약수들의 함
	public static int getSumOfDivisors(int num) {
		int sum = 0;

		for (int i = 1; i <= num; i++) {
			if (num % i == 0) {
				sum += i;
			}
		}
		return sum;
		
//		for (int i = 1; i <= num/2; i++) {
//			if (num % i == 0) {
//				sum += i;
//			}
//		}
//		return sum+sum;  //시간복잡도 줄임
	}

	
	//isPerfectNumber
	
	public static boolean isPerfectNumber(int num3) {
//		int sum=0;
//		
//		for(int i=1;i<num3;i++) {
//			if(num3%i==0) 
//				sum+=i;
//		}
//		
		int che= getSumOfDivisors(num3);
		
		if((che-num3)==num3)
			return true;
		else 
			return false;
	}
	
	
	
	//getPerfectNumber
	
	public static void getPerfectNumber(int start,int end) {
		System.out.print(start+" ~ "+end+" 사이 완전수 : ");
		for(int i=start;i<=end;i++) {
			if(isPerfectNumber(i)==true)
				System.out.print(i+" ");
			
		}

	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
