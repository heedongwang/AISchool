

import java.util.Random;

public class EX07대소 {

	public static void main(String[] args) {
		Random rd= new Random();
		
		int[] arr= new int[8];
		
		System.out.print("배열에 있는 모든 값: ");
		
		for(int i=0;i<arr.length;i++) {
			arr[i]=rd.nextInt(100)+1;
			System.out.print(arr[i]+" ");
		}
		System.out.println();
		int max=arr[0], min=arr[0];
		for(int i=0;i<arr.length;i++) {
			if(max<arr[i])
				max=arr[i];
			if(min>arr[i])
				min=arr[i];
		}
		
		System.out.println("가장 큰 값: "+max );
		System.out.println("가장 작은 값: "+min );

	}

}
