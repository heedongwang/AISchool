package 이중for문;

public class EX03별찍기 {

	public static void main(String[] args) {

		for (int j = 1; j <= 5; j++) {  
			for (int i = 1; i <= j; i++) {//i=3 이면 i<=j+3
				System.out.print("*");
			}
			System.out.println();
		}
		System.out.println("\n");
		
		
		for( int i=3;i<4;i++) {  //i가 3~4 / 3~5/ 3~6/3~7/3~8로 반복
			System.out.print("*");
		}
		System.out.println();
		for( int i=3;i<5;i++) {  
			System.out.print("*");
		}
		System.out.println();
		for( int i=3;i<6;i++) {  
			System.out.print("*");
		}
		System.out.println();
		for( int i=3;i<7;i++) {  
			System.out.print("*");
		}
		System.out.println();
		for( int i=3;i<8;i++) {  
			System.out.print("*");
		}
		System.out.println();
	
	
	}

}