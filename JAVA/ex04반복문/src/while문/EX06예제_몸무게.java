package while문;

import java.util.Scanner;

public class EX06예제_몸무게 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.print("현재몸무게 : ");
		int present = sc.nextInt();
		System.out.print("목표몸무게 : ");
		int goal = sc.nextInt();

		int week = 0;

		while (true) {
			week++;
			System.out.print(week + "주차 감량 몸무게:");
			int min = sc.nextInt();

			present -= min;

			if (present <= goal) {
				System.out.println(present + "kg 달성!! 축하합니다!!");
				break;
			}

		}

		sc.close();

	}

}
