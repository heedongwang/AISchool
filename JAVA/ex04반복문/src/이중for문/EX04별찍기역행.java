package 이중for문;

import java.util.Scanner;

public class EX04별찍기역행 {

	public static void main(String[] args) {
		
		Scanner sc= new Scanner(System.in);
		
		System.out.print("행 개수:");
		int hang=sc.nextInt();
//		
//		
//		for (int j = hang; j>0; j--) {  
//			for (int i = 1; i <= j; i++) {
//				System.out.print("*");
//			}
//			System.out.println();
//		}
//		
		
		
		for( int j=1 ; j<=hang	; j++) {
			for(int i=1; i<=hang+1-j;i++);{
				System.out.print("*");
			}
			
		}
		System.out.println();

		sc.close();
	}

}
