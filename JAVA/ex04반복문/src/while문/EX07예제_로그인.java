package while문;
		//숫자,문자 를 비교 == 사용
		//문자열 비교 equals() 사용
		//name==김희은=> name.equals(김희은)

import java.util.Scanner;

public class EX07예제_로그인 {
	public static void main(String[] args) {
		Scanner sc= new  Scanner(System.in);
		int count=0;
		
		
		while(true) {
			System.out.print("아이디를 입력해주세요>>");
			String ID=sc.next();
			System.out.print("비밀번호를 입력해주세요>>");
			int password= sc.nextInt();
			
			
			if(ID.equals("Hello")&& (password==1234)) {
				System.out.println("로그인 성공!");
				break;
			}else {
				count++;
				if(count<3) {
					System.out.println("아이디와 비밀번호가 잘못되었습니다.");
					System.out.print("계속 하시겠습니까? (Y/N) >> ");
					String retry=sc.next();
					if(retry.equals("N")) {
						System.out.println("종료합니다.");
						break;
					}
//					else if(retry.equals("Y")) 
//						continue;
				}else {
					System.out.println("아이디와 비밀번호가 3회 틀렸습니다. 본인인증을 해주세요.");
					break;
				}
			}
		}
		
		
		sc.close();
	}

}
