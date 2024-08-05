package while문;

import java.util.Scanner;

public class EX01while문 {

	public static void main(String[] args) {
		// while문 :반복횟수가 정해져 있지 않은 경우 사용한다

//		 int num=1;
//		 
//		while(true) {
//			System.out.println(num+". 출력");
//			num++;
//			if(num==10)
//				break; //반복문 종료 키워드
//		}

		// 실습: 사용자로 부터 숫자를 입력받는 걸 반복

		Scanner sc = new Scanner(System.in);

//		while (true) {
//			
//			System.out.print("정수 입력 : ");
//			int num1 = sc.nextInt();
//
//			if (num1 == 7) {
//				System.out.println("프로그램이 종료되었습니다.");
//				break;
//			}
//		}

//		
//		int num1=0;
//		while(num1!=7) {
//			System.out.print("정수 입력 : ");
//			num1 = sc.nextInt();
//			
//		}
//		System.out.println("프로그램이 종료되었습니다.");

		sc.close();
	}

}
