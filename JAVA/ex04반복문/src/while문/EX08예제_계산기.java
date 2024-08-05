package while문;
import java.util.Scanner;

public class EX08예제_계산기 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		while (true) {
			System.out.print("첫 번째 정수를 입력하세요 >> ");
			int num1 = sc.nextInt();
			System.out.print("두 번째 정수를 입력하세요 >> ");
			int num2 = sc.nextInt();
			System.out.print("[1] 더하기 [2] 빼기 >> ");
			int op = sc.nextInt();

			if (op == 1) {
				System.out.println("더하기 연산결과는 " + (num1 + num2)+"입니다.");
			} else if (op == 2) {
				System.out.println("빼기 연산결과는 " + (num1 - num2)+"입니다.");
			}

			System.out.print("다시 실행하시겠습니까? (Y/N) >> ");
			String restart = sc.next();

			if (restart.equals("N") || restart.equals("n")) {
				System.out.println("종료합니다.");
				break;
			}
		}
		
		
		sc.close();
	}
}
