package 이중for문;

public class EX01구구단 {

	public static void main(String[] args) {
		// 2~9단 이중for문 사용
		// 빌드업->2->3->4

//		System.out.print("2단: ");
//		for(int i=1;i<=9;i++) {
//			System.out.print("2*"+i+"="+i*2+" ");
//		}
//		System.out.println();
//		
//		System.out.print("3단: ");// 반복됨
//		for(int i=1;i<=9;i++) {
//			System.out.print("3*"+i+"="+i*3+" ");//반복됨
//		}
//		System.out.println("\n");

		for (int i = 2; i <= 9; i++) {
			System.out.print(i + "단 ");
			for (int j = 1; j <= 9; j++) {
				System.out.print(i + "*" + j + "=" + i * j + " ");
			}
			System.out.println();
		}

	}

}
