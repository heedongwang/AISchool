package 이차원배열;

public class EX00이차원배열 {

	public static void main(String[] args) {
		/*
		 * 이차원배열: 1차원 배열 안에 1차원 배열 존재, 같은 자료형의 데이터 관리 1)이차원 배열 선언, 생성 자료형[][] 배열명= new
		 * 자료형[][] arr2.length=5 arr2[0].length=5 arr.length=5 arr[0].length=3
		 */

		int[][] arr = new int[5][3];
		System.out.println(arr); // 주소값 출력
		System.out.println(arr[0]);// 0행 주소값
		System.out.println(arr[0][0]); // 0,0의 값 출력

		arr[0][0] = 1;
		arr[0][1] = 2;
		System.out.println(arr[0][0]); // 0,0의 값 출력

		int[][] arr2 = new int[5][5];
		int num = 1;

//		arr2[0][0]=num;
//		num++;
//		arr2[0][1]=num;
//		num++;
//		arr2[0][2]=num;
//		num++;
//		arr2[0][3]=num;
//		num++;
//		arr2[0][4]=num;
//		num++;
//		

//		for(int i=0;i<5;i++) {
//			arr2[0][i]=num;
//			num++;
//		}
//		for(int i=0;i< arr2.length;i++) {
//			arr2[1][i]=num;
//			num++;
//		}
//		for(int i=0;i< arr2.length;i++) {
//			arr2[2][i]=num;
//			num++;
//		}

		for (int i = 0; i < arr2.length; i++) {
			for (int j = 0; j < arr2.length; j++) {
				arr2[i][j] = num;
				num++;

			}
		}

		for (int i = 0; i < arr2.length; i++) {
			for (int j = 0; j < arr2.length; j++) {
				System.out.print(arr2[i][j] + "\t ");  //\t: 탭 실행, 줄 맞춤
			}
			System.out.println();
		}
		
		
		
	}

}
