package switch_case문;

import java.util.Scanner;

public class EX02switch문 {
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		System.out.print("1~12월 중 숫자 하나를 입력하세요:");
		int month = sc.nextInt();
		
		String season;
		if (month >= 3 & month <= 5) {
			season = "봄";
		} else if (month >= 6 & month <= 8) {
			season = "여름";
		} else if (month >= 9 & month <= 11) {
			season = "가을";
		} else {
			season = "겨울";
		}
		
		
		switch (season) {
		case "봄":
			System.out.println("현재 계절은 " + season + "입니다.");
			break;
		case "여름":
			System.out.println("현재 계절은 " + season + "입니다.");
			break;
		case "가을":
			System.out.println("현재 계절은 " + season + "입니다.");
			break;
		case "겨울":
			System.out.println("현재 계절은 " + season + "입니다.");
			break;
		}
		
		sc.close();
		
	}

}
