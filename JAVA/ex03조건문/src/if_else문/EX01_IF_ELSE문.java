package if_else문;

import java.util.Scanner;

public class EX01_IF_ELSE문 {

	public static void main(String[] args) {
		/*if-else문: 조건시의 참/거짓에 대한 실행코드
		  if(조건식){true일때}
		  else{fasle일때}
		  if(){
		  }else{
		  }=>else를 붙여서 사용
		  
		  ctrl+shift+f:코드 정리
		*/
		
		Scanner sc= new Scanner(System.in);
		
		System.out.print("정수 입력:");
		int num=sc.nextInt();
		
		if(num%2 == 0) {
			System.out.println("짝수입니다.");
		}else {
			System.out.println("홀수입니다.");
		}
		
		
		
		
		
		
		
		sc.close();
	
	}

}
