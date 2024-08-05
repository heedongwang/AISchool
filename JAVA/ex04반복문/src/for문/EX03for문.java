package for문;

import java.util.Scanner;

public class EX03for문 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		int sum = 0;

		System.out.print("정수입력: ");
		int num = sc.nextInt();

		System.out.print(num + "의 약수: ");

		for (int i = 1; i <= num; i++) {
			if (num % i == 0) {
				System.out.print(i + " ");

				sum += i;
			}
		}
		System.out.println("");
		// 약수 총합
		System.out.print(sum);

		// clean code: 코드길이 짧음, 유지보수 용이, 가독성 뛰어나다, 시간복잡도 줄어든 코드

		sc.close();

	}

}
