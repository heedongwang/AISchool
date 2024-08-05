package ex01변수;

public class EX03자료형 {

	public static void main(String[] args) {
		//1.논리형
		// boolen:1byte( true, false) error: type mismatch error
		boolean isHot= true;
		System.out.println(isHot);
		
		//2.문자형
		//char:2byte-> 유니코드 문자도 저장가능 ''
		char firstName='K';
	
		System.out.println(firstName);
		
		//3.정수형
		//byte: 1byte 8bit 2^8=256=>-128~127
		//byte= num1=127;
		
		//short: 2byte(16bit)
		short num2= 128;
		
		//int: 4 byte: 정수형 데이터 타임중 기본으로 사용
		// 기본데이터 타입을 선언하면 메모리 공간을 차지(너무 작지도 크지도 않는 메모리 차지)=>효율적인 메모리 사용
		int num3=200;
		
		//long: 8byte
		
		//4. 실수형: 소수점이 붙은 숫자
		//float:4byte
		//double:8byte-> 기본형	
		double pi1=3.141592;
		float pi2= (float)3.141592;
		
		System.out.println(num2+num3+pi1+pi2);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		//** 형변환(cast):	
		//1.강제형변환(명시적): 큰 자료형을 작은 자료형의 변수에 담을 때 진행
		//이곳에서 손실값이 발생할수 잇음을 알림
		
		//2.자동형변환(묵시적): 작은 자료형을 큰 자료형의 변수에 담을 때 진행
		
		
		
		//유니코드 사용
		//char를 형변환하여 출력시 a라는 문자가 보이는지 확인
		int num=97;

		char ch= (char)num;
		System.out.println(ch);
		
		
		//래퍼런스형 데이터 타입
		//String: 문자열 저장 데이터 타입" "
		String name="김희은";
		System.out.println(name);
		
		//주소값: 데이터가 저장되어있는 장소
		//주소값을 Reference: 참조하는 데이터 타입
	}

}
