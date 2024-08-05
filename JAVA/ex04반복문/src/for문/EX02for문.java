package for문;

import java.util.Scanner;

public class EX02for문 {

	public static void main(String[] args) {
		/*
		 * 1)1~100 중 3의 배수만 출력 2) 1~100 중 3,5배수 만족하는 수 3)한개의 자연수를 입력받아 배수를 차례대로 10개 출력
		 * if문은 실행코드가 한줄이면 중괄호 생략가능
		 * */

		Scanner sc = new Scanner(System.in);

		// 1)
		for (int i = 1; i <= 100; i++) {
			if (i % 3 == 0) {
				System.out.print(i + " ");
			}
		}
		System.out.println("\n");

		// 2)
		for (int i = 1; i <= 100; i++) {
			if (i % 3 == 0 && i % 5 == 0) {
				System.out.print(i + " ");
			}
		}
		System.out.println("\n");

		// 3)
		System.out.print("자연수를 입력하세요: ");
		int num = sc.nextInt();

		for (int i = 1; i <= 10; i++) {
			System.out.print((i * num) + " ");
		}
		
		
		
		
		sc.close();

	}

}
