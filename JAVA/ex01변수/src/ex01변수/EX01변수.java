package ex01변수;

public class EX01변수 {

	public static void main(String[] args) {
		//변수: 프로그래밍에서 데이터를 담을 수 있는 공간
		//a라는 공간에 정수형 데이터 3 저장
		int a=3; //선언 및 초기화
		System.out.println(a);
		
		//b라는 공간에 정수형 데이터 5 저장
		//1)선언: 공간 만들기
		int b;
		//2)초기화(할당): 변수에 처음으로 값을 대입
		b=5;
		System.out.println(b);
		//선언된 변수엔 다시 선언 불가능(클래스에서 한번만 가능)
		b=7;//재할당: 다른 값으로 넣어줌
		
		System.out.println(b);
	}
	// 상수= 재할당 불가능 final int a =3;

}
