package 일차원배열;

public class EX03배열 {

	public static void main(String[] args) {
		int[] arr = { 23, 45, 95, 17, 6, 89, 47, 56, 68, 71 };
		int max = arr[0];
		int min = arr[0];

		for (int i = 0; i < arr.length; i++) {
			if (max < arr[i])
				max = arr[i];

			if (min > arr[i])
				min = arr[i];
		}

		System.out.println("최대값 : " + max);
		System.out.println("최소값 : " + min);

	}

}