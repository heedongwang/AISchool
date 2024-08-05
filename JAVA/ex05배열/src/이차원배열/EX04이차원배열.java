package 이차원배열;

public class EX04이차원배열 {

	public static void main(String[] args) {
		int[][] arr= new int[5][5];
		int num=21;
		

		for(int i=0;i<arr.length;i++) {
			if(i%2==0) {
				for(int j=0;j<arr.length;j++) {
				
					arr[i][j]=num;
					num++;
					}
				
				}else {
					for(int j=arr.length-1;j>=0;j--) {
					arr[i][j]=num;
					num++;
					}
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
