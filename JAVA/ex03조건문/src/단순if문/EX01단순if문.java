package 단순if문;

import java.util.Scanner;

public class EX01단순if문 {

	public static void main(String[] args) {
		/*
		제어문 :컴파일 방향을 개발가자 원하는 방향으로 제어하기위한 문법
		1)조건문: 조건식에 따라 실행 혹은 넘어가는 방법=> if, ifelse, elseif, switch-case
		단순 if 구조: if(조건식){조건식이 true일때 실행}
		조건식: 결과값으로 bool자료형 반환(논리, 비교, bool)
		판단=>조건식(문)
		*/
		Scanner sc= new Scanner(System.in);
		
		System.out.print("나이 입력 : ");
		int age= sc.nextInt();
		
		if(age>=20)
			System.out.println("성인입니다.");
		
		sc.close();
		
	}
		
}
