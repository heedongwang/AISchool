package 삼항연산자;

import java.util.Scanner;

public class EX02삼항연산자 {

	public static void main(String[] args) {
		//입력도구
		Scanner sc= new Scanner(System.in);
		//출력문
		System.out.print("첫 번째 정수 입력:");
		//입력문=num1
		int num1= sc.nextInt();
		//출력
		System.out.print("두 번째 정수 입력:");
		//입력문=num2
		int num2= sc.nextInt();
		
		//두 수를 비교해서 수의 차 출력
		int cha= (num1>num2)?num1-num2:num2-num1;
			
		System.out.println("두 수의 차:"+cha);
		sc.close();
	}

}
