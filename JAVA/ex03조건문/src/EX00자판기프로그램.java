
import java.util.Scanner;

public class EX00자판기프로그램 {

	public static void jandon(int money) {

		int chen = 0, oh = 0, beak = 0;

		chen = (money / 1000);

		if ((money % 1000) >= 500) {
			oh = (money % 1000) / 500;
			//beak = ((money % 1000) / 100) - 5;
			beak=(money%500)/100;
			
		} else {
			beak = ((money % 1000) / 100);
			
		}

		System.out.println("천원: " + chen + "개, " + "오백원: " + oh + "개, " + "백원: " + beak + "개");
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.println("금액을 입력하세요");
		int money = sc.nextInt();

		System.out.println("메뉴를 고르세요");
		System.out.print("1.아우터(700원) 2.이구동성(1000원) 3.에그몽(500원)");
		int menu = sc.nextInt();

		if (menu == 1 && money >= 700) {
			money -= 700;
			System.out.println("잔돈:" + money + "원");
			jandon(money);

		} else if (menu == 2 && money >= 1000) {
			money -= 1000;
			System.out.println("잔돈:" + money + "원");
			jandon(money);

		} else if (menu == 3 && money >= 500) {
			money -= 500;
			System.out.println("잔돈:" + money + "원");
			jandon(money);

		} else {
			System.out.println("돈이 부족해요");
		}

//		System.out.println("잔돈:" + money + "원");
//		jandon(money);

		sc.close();

	}

}
