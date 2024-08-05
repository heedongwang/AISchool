package else_if문;

import java.util.Scanner;

public class EX03_ELSE_IF {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.print("소프트웨어 설계:");
		int a = sc.nextInt();
		System.out.print("소프트웨어 개발:");
		int b = sc.nextInt();
		System.out.print("데이터베이스 구축:");
		int c = sc.nextInt();
		System.out.print("프로그래밍언어 활용:");
		int d = sc.nextInt();
		System.out.print("정보시스템 구축관리:");
		int e = sc.nextInt();

		int sum = a + b + c + d + e;

		if (a < 8 || b < 8 || c < 8 || d < 8 || e < 8) {
			System.out.println("불합격입니다!");
		} else if ((sum / 5) < 12) {
				System.out.println("불합격입니다!");
		}else {
				System.out.println("합격입니다!");
			}
		
		
		
		sc.close();
	}
}
