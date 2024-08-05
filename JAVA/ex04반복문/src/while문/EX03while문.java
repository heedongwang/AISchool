package while문;

import java.util.Scanner;

public class EX03while문 {

	public static void main(String[] args) {
		
		/*숫자를 입력받아 누적하는 프로그램 작성
		 * 단, -1입력시 프로그램 종료, 누적결과는 보여줌*/
		Scanner sc = new Scanner(System.in);

		int sum = 0;

		while (true) {
			System.out.print("정수 입력 : ");
			int num = sc.nextInt();
			
			sum += num;
			System.out.println("누적결과 : " + sum);
			
			if (num == -1) {
				System.out.print("종료되었습니다.");
				break;
			}
		}

		sc.close();
	}

}
