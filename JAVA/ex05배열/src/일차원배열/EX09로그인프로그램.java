package 일차원배열;

import java.util.Scanner;

public class EX09로그인프로그램 {

	public static void main(String[] args) {
		Scanner sc= new Scanner(System.in);
		String[] id=new String[3];
		int[] pw= new int[3];
		int count=1;
		
		while(true) {
			System.out.print("[1] 회원가입 [2]로그인 [3] 종료>>");
			int cho=sc.nextInt();
			if(cho==1) {
				System.out.println("==회원가입==");
				
				for(int i=0;i<id.length;i++) {
					System.out.print("아이디 입력: ");
					id[i]=sc.next();

					System.out.print("비밀번호 입력: ");
					pw[i]=sc.nextInt();

					System.out.println("가입성공");
					count+=1;
				}
				
				if(count>3) 
					System.out.println("더 이상 가입할 수 없습니다");
				
			
			}else if(cho==2) {
				System.out.println("==로그인==");
				
				System.out.print("아이디 입력: ");
				String input_id=sc.next();
				System.out.print("비밀번호 입력: ");
				int input_pw=sc.nextInt();
				int ok=0;

				for(int i=0; i<id.length;i++) {
					if(id[i].equals(input_id)&& pw[i]==input_pw)
						ok=1;				
				}
				
				if(ok==1)
					System.out.println("로그인 성공");
				else 
					System.out.println("로그인 실패");
								

			}else if(cho==3) {
				System.out.println("프로그램이 종료되었습니다.");
				break;
			}
			
			
		}

		sc.close();
	}

}
