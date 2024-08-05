package while문;

import java.util.Random;
import java.util.Scanner;

public class EX10예제_업다운 {
	public static void main(String[] args) {
		Random rd =new Random();
		Scanner sc= new Scanner(System.in);
		System.out.println("===========1부터 100사이 숫자 맞추기 게임!===========");
		
		int ans= rd.nextInt(100)+1;
		
		while(true) {
			System.out.print("1과 100사이의 정수를 입력하세요>>");
			int in= sc.nextInt();
			
			if(ans>in) {
				System.out.println("더 큰 수로 다시 시도해 보세요");
				
			}else if(ans<in) {
				System.out.println("더 작은 수로 다시 시도해 보세요");
				
			}else {
				System.out.println(ans+" 정답입니다!");
				break;
				
			}
		}
		sc.close();
		
	}

}
