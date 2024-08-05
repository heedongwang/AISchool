package if_else문;

import java.util.Scanner;

public class EX02_IF_ELSE문 {
	public static void main(String[] args) {
		
		Scanner sc= new Scanner(System.in);
		
		System.out.println("사려는 상품 갯수를 입력하세요:");
		int num=sc.nextInt();
		
		
		if(num>10) {
			double discount=(num*10000)*0.9;
			System.out.println("가격은 "+(int)discount+"원 입니다");
		}else {
			System.out.println("가격은 "+(num*10000)+"원 입니다");
		}
		
	
		
		

		
		
		
		
		
		
		sc.close();
	}
}
