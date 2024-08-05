package 일차원배열;

import java.util.Scanner;

public class EX04배열 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		// 점수가 저장될 수 있는 배열
		
		int[] score = new int[5];
		//배열입력
		for (int i = 0; i < score.length; i++) {
			System.out.print((i + 1) + "번째 입력>>");
			score[i] = sc.nextInt();
		}
		
		//배열 출력
		System.out.print("입력된 점수:");
		for (int i = 0; i < score.length; i++) {
			System.out.print(" " + score[i]);
		}
		System.out.println();
		
		//최고,최소,합,평균 초기화
		int max = score[0], min = score[0], sums = 0;
		double avg = 0;

		//최고,최소, 합 구하기
		for (int i = 0; i < score.length; i++) {
			if (max < score[i])
				max = score[i];

			if (min > score[i])
				min = score[i];
			sums += score[i];
		}
		
		//평균 구하기
		avg = (double) sums / score.length;

		System.out.println("최고점수: " + max);
		System.out.println("최저점수: " + min);
		System.out.println("총합: " + sums);
		System.out.println("평균: " + avg);
		
		sc.close();
		
	}

}
