package while문;
/*랜덤으로 숫자 가져오기 
 * import java.util.Random; 
 * Random rd= new Random();
 * rd.nextInt()
 * rd.nextInt(n)  0~n-1의 값 출력*/

import java.util.Random;
import java.util.Scanner;

public class EX09예제_숫자게임 {

	public static void main(String[] args) {
		Random rd = new Random();
		Scanner sc = new Scanner(System.in);

		System.out.println("===========Plus Game===========");

		while (true) {
			// rand1,2= 정답을 구하기 위한 랜덤 수
			int rand1 = rd.nextInt(10) + 1; // 1~10 nextInt(10)=0~ 9
			int rand2 = rd.nextInt(10) + 1;
			int result = rand1 + rand2; // 실제 정답

			System.out.print(rand1 + "+" + rand2 + "=");

			int ans = sc.nextInt(); // 사용자가 입력한 정답

			if (result == ans) {
				System.out.println("Success");

			} else {
				System.out.println("Fail");
				System.out.println("계속 하시겠습니까?? >> (Y/N)");
				String con = sc.next(); // 재실행 여부

				if (con.equals("N") || con.equals("n")) {
					System.out.println("종료합니다.");
					break;
				}
			}

		}

		sc.close();
	}

}
