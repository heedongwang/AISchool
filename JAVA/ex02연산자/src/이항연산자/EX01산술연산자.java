package 이항연산자;

//import java.util.Scanner;

public class EX01산술연산자 {

	public static void main(String[] args) {
		
		// +,-,*,/,%=>더하기, 빼기, 곱하기, 몫, 나머지
		
		//숫자 2개 준비
		int num1=3;
		int num2=7;
		
		System.out.println(num1 + num2);
		System.out.println(num1 - num2);
		System.out.println(num1 * num2);
		System.out.println(num1 / num2);
		System.out.println(num1 % num2);
		//복사할 줄에 커서 놓도ctrl+alt+ 방향키
		
		//실습) num3와 num4에 사용자가 입력한 값이 저장될수 있게 하고(Scanner-nextInt())
		//산술연산자들의 결과값을 출력
		// 목 결과값이 소수점이 보여지게 만들어보자
		
		/*Scanner sc= new Scanner(System.in);
		System.out.print("첫번쨰 숫자를 입력하세요>>");
		int num3= sc.nextInt();
		System.out.print("두번쨰 숫자를 입력하세요>>");
		int num4= sc.nextInt();
		System.out.println(num3+num4);
		System.out.println(num3-num4);
		System.out.println(num3*num4);
		System.out.println(((double)num3)/(num4));
		System.out.println(num3%num4);
		*/
		
		//+:문자열 연산 가능
		System.out.println(7+3+"7");
		
		System.out.println(7+"3"+7);
		System.out.println("7"+3+7);  //=>앞 뒤 숫자데이터가 자동으로 문자열로 형변환
		
		
		System.out.println("더하기 결과값"+(7+3));
		
		
	}

}
