package 이차원배열;

public class EX03이차원베열 {

	public static void main(String[] args) {
		int[] [] arr= new int[5][5];	

		int num=21;
		
//		int n=45;		
//		for(int i=0;i<arr.length;i++) {
//			for(int j=arr.length-1;j>=0;j--) {
//				arr[j][i]=n;
//				n--;
//				
//			}
//		}

		for(int i=arr.length-1;i>=0;i--) {
			for(int j=0;j<arr.length;j++) {
				arr[j][i]=num;
				num++;
				
			}
		}
		
		
		
		
		
		
		
		
		
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr.length; j++) {
				System.out.print(arr[i][j] + "\t ");  
			}
			System.out.println();
		}


	}

}
