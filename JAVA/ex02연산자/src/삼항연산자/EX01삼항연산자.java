package 삼항연산자;

import java.util.Scanner;

public class EX01삼항연산자 {

	public static void main(String[] args) {
		/*사용자에게 숫자 받아 홀/짝 구분*/
		Scanner sc= new Scanner(System.in);
		
		System.out.print("정수를 입력하세요:");
		int num= sc.nextInt();
		sc.close();
		
		//String result=( (num%2==0) ? "는(은) 짝수입니다.":"는(은) 홀수입니다.");
		//System.out.println(num+result);
		
		System.out.println(num+"는(은)"+(num%2==1 ? "홀수":"짝수")+"입니다.");
	}

}
