package 일차원배열;

import java.util.Random;

public class EX06배열 {

	public static void main(String[] args) {
		Random rd = new Random();

		int[] list = new int[5];

		System.out.println("==========로또타임===========");
		System.out.println("이번주 출력번호는요...!!두구두구두구!!!!");

		list[0] = rd.nextInt(10) + 1;

		for (int i = 0; i < list.length; i++) {
			list[i] = rd.nextInt(10) + 1;
			for (int j = 0; j < i; j++) {
				if (list[i] == list[j]) {
					i--;
					break;
				}
			}
		}

		for (int i = 0; i < list.length; i++) {
			System.out.print(list[i] + " ");
		}
	}
}


//빌드업
//// 1번 인덱스에 값을 할당
//lotto[1] = rd.nextInt(10)+1;
//// 0번 인덱스의 값과 같은지 확인
//for(int i = 0; i < 1; i++) {
// // i : 0
// if(lotto[1] == lotto[i]) {
//    // 다시 1번인덱스에 값을 할당할 수 있도로 코드
// }
//}
//// 2번 인덱스에 값을 할당
//lotto[2] = rd.nextInt(10)+1;
//// 0, 1번 인덱스의 값과 같은지 확인
//for(int i = 0; i < 2; i++) {
// if(lotto[2] == lotto[i]) {
//    // 다시 2번인덱스에 값을 할당할 수 있도로 코드
// }
//}
//
//// 3
//lotto[3] = rd.nextInt(10)+1;
//for(int i = 0; i < 3; i++) {
// // i : 0 1 2
// if(lotto[3] == lotto[i]) {
//    // 다시 2번인덱스에 값을 할당할 수 있도로 코드
// }
//}
//
//lotto[4] = rd.nextInt(10)+1;
//for(int i = 0; i < 4; i++) {
// // i: 0 1 2 3
// if(lotto[4] == lotto[i]) {
//    // 다시 4번인덱스에 값을 할당할 수 있도록 코드
// }
//}
//
//
