package 일차원배열;
import java.util.Scanner;

public class EX07배열 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int[] arr= new int[5];
		
		
		for(int i=0; i<arr.length;i++ ) {
			System.out.print((i+1)+"번째 별의 수: ");
			arr[i]= sc.nextInt();
			
		}
		
		
		for(int i=0; i<arr.length;i++) {
			System.out.print(arr[i]+" : ");
				int con=arr[i];
				for(int j=1;j<=con;j++) {
					System.out.print("*");
				}
				System.out.println();
			
		}
	
		sc.close();

	}

}
