package 이중for문;

public class EX02약수구하기 {
	public static void main(String[] args) {
		// 약수구하기
		
		for (int i = 2; i <= 30; i++) {
			System.out.print(i + "의 약수 : ");
			
			for (int j = 1; j <= i; j++) {
				if (i % j == 0) 
					System.out.print(j + " ");
			}
			
			System.out.println();
		}
		
		//2의 약수
		// 2/1 2/2
		//3의 약수
		// 3/1 3/2 3/3
		//4의 약수 
		//4/1 4/2 4/3 4/4...

		
		
		
	}
}
