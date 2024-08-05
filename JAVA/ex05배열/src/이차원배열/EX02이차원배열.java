package 이차원배열;

public class EX02이차원배열 {

	public static void main(String[] args) {
	int[] [] arr= new int[5][5];
		
		int n=21;
		
		for(int i=0;i<arr.length;i++) {
			for(int j=0;j<arr.length;j++) {
				arr[j][i]=n;
				n++;
				
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
